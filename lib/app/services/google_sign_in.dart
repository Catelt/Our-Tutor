import 'package:google_sign_in/google_sign_in.dart';

import '../dialogs/toast_wrapper.dart';
import '../localization/localization_utils.dart';
import '../network/domain_manager.dart';
import '../network/model/common/result.dart';
import '../network/model/user/user.dart';

GoogleSignIn _googleSignIn = GoogleSignIn.instance;

class XGoogleSignIn {
  //singleton
  static XGoogleSignIn? _internal;
  XGoogleSignIn._();
  factory XGoogleSignIn() {
    if (_internal == null) _internal = XGoogleSignIn._();
    _internal!.init();
    return _internal!;
  }

  GoogleSignInAccount? _currentUser;
  GoogleSignInAccount? get currentUser => _currentUser;

  Future<bool> isLogedIn() async {
    return _currentUser != null;
  }

  void init() async {
    await _googleSignIn.initialize();
    _googleSignIn.authenticationEvents.listen((event) {
      if (event is GoogleSignInAuthenticationEventSignIn) {
        _currentUser = event.user;
        print("Google sign in success with email ${_currentUser!.email}");
      } else if (event is GoogleSignInAuthenticationEventSignOut) {
        _currentUser = null;
        print("Google sign in with no User, currentUser IS NULL");
      }
    });
    _googleSignIn.attemptLightweightAuthentication();
  }

  Future<Map<String, String>?> getAuthHeaders() async {
    if (_currentUser == null) return null;
    return await _currentUser!.authorizationClient.authorizationHeaders(['email']);
  }

  Future<MResult<MUser>> handleSignIn() async {
    try {
      if (!_googleSignIn.supportsAuthenticate()) {
        XToast.error("Google sign in is not supported on this platform.");
        return MResult.error(S.text.error_sign_in_google);
      }
      var result = await _googleSignIn.authenticate(scopeHint: ['email']);
      _currentUser = result;
      
      var authz = await _currentUser!.authorizationClient.authorizationForScopes(['email']) 
          ?? await _currentUser!.authorizationClient.authorizeScopes(['email']);
          
      final response = await DomainManager.I.auth.loginGG(
        authz.accessToken,
      );
      return response;
    } catch (e) {
      XToast.error(e.toString());
      return MResult.exception(e);
    }
  }

  Future<void> handleSignOut() async {
    await _googleSignIn.signOut();
    // await _googleSignIn.disconnect();
  }
}
