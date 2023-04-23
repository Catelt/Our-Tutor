import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @common_appTitle.
  ///
  /// In en, this message translates to:
  /// **'Out Tutor'**
  String get common_appTitle;

  /// Version number of app
  ///
  /// In en, this message translates to:
  /// **'Version {value}'**
  String common_appVersion(String value);

  /// No description provided for @common_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get common_loading;

  /// No description provided for @common_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get common_next;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// No description provided for @common_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get common_no;

  /// No description provided for @common_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get common_close;

  /// No description provided for @common_exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get common_exit;

  /// No description provided for @common_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get common_back;

  /// No description provided for @error_noInternet.
  ///
  /// In en, this message translates to:
  /// **'A Server Error Occurred'**
  String get error_noInternet;

  /// No description provided for @error_unknown.
  ///
  /// In en, this message translates to:
  /// **'An Unknown Error Occurred'**
  String get error_unknown;

  /// No description provided for @error_somethingWrongTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, try again...'**
  String get error_somethingWrongTryAgain;

  /// No description provided for @error_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Log in failed. Incorrect email or password'**
  String get error_sign_in;

  /// No description provided for @error_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up failed. Please try again'**
  String get error_sign_up;

  /// No description provided for @error_sign_up_email.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get error_sign_up_email;

  /// No description provided for @common_empty_field.
  ///
  /// In en, this message translates to:
  /// **'Field is requirement'**
  String get common_empty_field;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'EMAIL'**
  String get email;

  /// No description provided for @email_hint.
  ///
  /// In en, this message translates to:
  /// **'abc@gmail.com'**
  String get email_hint;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get invalid_email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD'**
  String get password;

  /// No description provided for @password_hint.
  ///
  /// In en, this message translates to:
  /// **''**
  String get password_hint;

  /// No description provided for @invalid_password.
  ///
  /// In en, this message translates to:
  /// **'Password with at least 6 characters'**
  String get invalid_password;

  /// No description provided for @sign_in_title.
  ///
  /// In en, this message translates to:
  /// **'Say hello to your English tutors'**
  String get sign_in_title;

  /// No description provided for @sign_in_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Become fluent faster through one on one video chat lessons tailored to your goals.'**
  String get sign_in_subtitle;

  /// No description provided for @sign_in_button.
  ///
  /// In en, this message translates to:
  /// **'LOG IN'**
  String get sign_in_button;

  /// No description provided for @sign_in_continue.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get sign_in_continue;

  /// No description provided for @sign_in_forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get sign_in_forget_password;

  /// No description provided for @sign_in_footer.
  ///
  /// In en, this message translates to:
  /// **'Not a member yet? '**
  String get sign_in_footer;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get sign_up;

  /// No description provided for @sign_up_title.
  ///
  /// In en, this message translates to:
  /// **'Start learning with LetTutor'**
  String get sign_up_title;

  /// No description provided for @sign_up_footer.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get sign_up_footer;

  /// No description provided for @sign_up_button.
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get sign_up_button;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get sign_in;

  /// No description provided for @forget_password_title.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get forget_password_title;

  /// No description provided for @forget_password_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email address to search for your account.'**
  String get forget_password_subtitle;

  /// No description provided for @forget_password_subtitle_success.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox for a link to reset your password.'**
  String get forget_password_subtitle_success;

  /// No description provided for @forget_password_button.
  ///
  /// In en, this message translates to:
  /// **'Send Email'**
  String get forget_password_button;

  /// No description provided for @book_button.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get book_button;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
