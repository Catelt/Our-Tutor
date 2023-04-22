import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get common_appTitle => 'Out Tutor';

  @override
  String common_appVersion(String value) {
    return 'Version $value';
  }

  @override
  String get common_loading => 'Loading';

  @override
  String get common_next => 'Next';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_no => 'No';

  @override
  String get common_close => 'Close';

  @override
  String get common_exit => 'Exit';

  @override
  String get common_back => 'Back';

  @override
  String get error_noInternet => 'A Server Error Occurred';

  @override
  String get error_unknown => 'An Unknown Error Occurred';

  @override
  String get error_somethingWrongTryAgain => 'Something went wrong, try again...';

  @override
  String get email => 'EMAIL';

  @override
  String get email_hint => 'abc@gmail.com';

  @override
  String get password => 'PASSWORD';

  @override
  String get password_hint => '';

  @override
  String get sign_in_title => 'Say hello to your English tutors';

  @override
  String get sign_in_subtitle => 'Become fluent faster through one on one video chat lessons tailored to your goals.';

  @override
  String get sign_in_button => 'LOG IN';

  @override
  String get sign_in_continue => 'Or continue with';

  @override
  String get sign_in_forget_password => 'Forgot Password?';

  @override
  String get sign_in_footer => 'Not a member yet? ';

  @override
  String get sign_up => 'Sign up';

  @override
  String get sign_up_title => 'Start learning with LetTutor';

  @override
  String get sign_up_footer => 'Already have an account?';

  @override
  String get sign_up_button => 'SIGN UP';

  @override
  String get sign_in => 'Log in';
}
