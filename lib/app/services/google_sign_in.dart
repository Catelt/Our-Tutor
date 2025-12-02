import 'package:google_sign_in/google_sign_in.dart';

import '../dialogs/toast_wrapper.dart';
import '../localization/localization_utils.dart';
import '../network/domain_manager.dart';
import '../network/model/common/result.dart';
import '../network/model/user/user.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    // 'https://www.googleapis.com/auth/cloud-platform.read-only',
  ],
);

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

  Future<bool> isLogedIn() => _googleSignIn.isSignedIn();

  void init() async {
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      if (_currentUser != null) {
        print("Google sign in success with email ${_currentUser!.email}");
      } else {
        print("Google sign in with no User, currentUser IS NULL");
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<Map<String, String>>? getAuthHeaders() =>
      _googleSignIn.currentUser?.authHeaders;

  Future<MResult<MUser>> handleSignIn() async {
    try {
      var result = await _googleSignIn.signIn();
      if (result != null) {
        _currentUser = await result;
        GoogleSignInAuthentication? googleSignInAuthentication =
            await _currentUser?.authentication;

        if (googleSignInAuthentication != null) {
          final response = await DomainManager.I.auth.loginGG(
            googleSignInAuthentication.accessToken ?? "",
          );
          return response;
        }
      }
      XToast.error(S.text.error_sign_up_email);
      return MResult.error(S.text.error_sign_in_google);
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
