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

  /// No description provided for @common_success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get common_success;

  /// No description provided for @common_submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get common_submit;

  /// No description provided for @common_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset Filter'**
  String get common_reset;

  /// No description provided for @common_empty.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get common_empty;

  /// No description provided for @common_go_meeting.
  ///
  /// In en, this message translates to:
  /// **'Go to meeting'**
  String get common_go_meeting;

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

  /// No description provided for @navigation_tutor.
  ///
  /// In en, this message translates to:
  /// **'Tutor'**
  String get navigation_tutor;

  /// No description provided for @navigation_schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get navigation_schedule;

  /// No description provided for @navigation_history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navigation_history;

  /// No description provided for @navigation_course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get navigation_course;

  /// No description provided for @navigation_account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get navigation_account;

  /// No description provided for @error_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Log in failed. Incorrect email or password'**
  String get error_sign_in;

  /// No description provided for @success_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up successful. Please check your email to verify the account'**
  String get success_sign_up;

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

  /// No description provided for @error_sign_in_google.
  ///
  /// In en, this message translates to:
  /// **'Sign in google fail'**
  String get error_sign_in_google;

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

  /// No description provided for @password_not_match.
  ///
  /// In en, this message translates to:
  /// **'Doesn\'t match password'**
  String get password_not_match;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD'**
  String get password;

  /// No description provided for @password_confirm.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM PASSWORD'**
  String get password_confirm;

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

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get favorite;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @record.
  ///
  /// In en, this message translates to:
  /// **'Record'**
  String get record;

  /// No description provided for @lesson.
  ///
  /// In en, this message translates to:
  /// **'lesson'**
  String get lesson;

  /// No description provided for @add_a_rating.
  ///
  /// In en, this message translates to:
  /// **'Add a Rating'**
  String get add_a_rating;

  /// No description provided for @enter_lesson_room.
  ///
  /// In en, this message translates to:
  /// **'Enter lesson room'**
  String get enter_lesson_room;

  /// No description provided for @tutors_find_tutor.
  ///
  /// In en, this message translates to:
  /// **'Find a tutor'**
  String get tutors_find_tutor;

  /// No description provided for @tutors_find_tutor_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter tutor name'**
  String get tutors_find_tutor_hint;

  /// No description provided for @tutors_find_tutor_national_hint.
  ///
  /// In en, this message translates to:
  /// **'Select tutor nationality'**
  String get tutors_find_tutor_national_hint;

  /// No description provided for @tutors_up_coming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming lesson'**
  String get tutors_up_coming;

  /// No description provided for @tutors_total_time.
  ///
  /// In en, this message translates to:
  /// **'Total lesson time is {hours} hours {minutes} minutes'**
  String tutors_total_time(int hours, int minutes);

  /// No description provided for @tutor_languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get tutor_languages;

  /// No description provided for @tutor_specialties.
  ///
  /// In en, this message translates to:
  /// **'Specialties'**
  String get tutor_specialties;

  /// No description provided for @tutor_suggested_courses.
  ///
  /// In en, this message translates to:
  /// **'Suggested courses'**
  String get tutor_suggested_courses;

  /// No description provided for @tutor_interests.
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get tutor_interests;

  /// No description provided for @tutor_teaching_experience.
  ///
  /// In en, this message translates to:
  /// **'Teaching experience'**
  String get tutor_teaching_experience;

  /// No description provided for @history_title.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history_title;

  /// No description provided for @history_subTitle.
  ///
  /// In en, this message translates to:
  /// **'The following is a list of lessons you have attended\nYou can review the details of the lessons you have attended'**
  String get history_subTitle;

  /// No description provided for @history_lesson_time.
  ///
  /// In en, this message translates to:
  /// **'Lesson Time: {value}'**
  String history_lesson_time(String value);

  /// No description provided for @history_review.
  ///
  /// In en, this message translates to:
  /// **'Review from tutor'**
  String get history_review;

  /// No description provided for @history_no_review.
  ///
  /// In en, this message translates to:
  /// **'Tutor haven\'t reviewed yet'**
  String get history_no_review;

  /// No description provided for @history_request.
  ///
  /// In en, this message translates to:
  /// **'Request for lesson'**
  String get history_request;

  /// No description provided for @history_no_request.
  ///
  /// In en, this message translates to:
  /// **'No request for lesson'**
  String get history_no_request;

  /// No description provided for @discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get discover;

  /// No description provided for @report_title.
  ///
  /// In en, this message translates to:
  /// **'Report {value}'**
  String report_title(String value);

  /// No description provided for @report_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Help us understand what\'s happening'**
  String get report_subtitle;

  /// No description provided for @setting_edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get setting_edit_profile;

  /// No description provided for @setting_become_tutor.
  ///
  /// In en, this message translates to:
  /// **'Become tutor'**
  String get setting_become_tutor;

  /// No description provided for @setting_language.
  ///
  /// In en, this message translates to:
  /// **'Language Preferences'**
  String get setting_language;

  /// No description provided for @setting_theme.
  ///
  /// In en, this message translates to:
  /// **'Theme Mode'**
  String get setting_theme;

  /// No description provided for @setting_private_policy.
  ///
  /// In en, this message translates to:
  /// **'Private Policy'**
  String get setting_private_policy;

  /// No description provided for @setting_button_log_out.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get setting_button_log_out;

  /// No description provided for @title_bottom_select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get title_bottom_select_language;

  /// No description provided for @hint_edit_text.
  ///
  /// In en, this message translates to:
  /// **'Start typing or taking'**
  String get hint_edit_text;

  /// No description provided for @is_listening_gpt.
  ///
  /// In en, this message translates to:
  /// **'listening...'**
  String get is_listening_gpt;

  /// No description provided for @title_bottom_select_theme.
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get title_bottom_select_theme;

  /// No description provided for @system_theme.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system_theme;

  /// No description provided for @dark_theme.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark_theme;

  /// No description provided for @light_theme.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light_theme;

  /// No description provided for @topics.
  ///
  /// In en, this message translates to:
  /// **'topics'**
  String get topics;

  /// No description provided for @more_info.
  ///
  /// In en, this message translates to:
  /// **'More info'**
  String get more_info;

  /// No description provided for @course_detail_why.
  ///
  /// In en, this message translates to:
  /// **'Why take this course'**
  String get course_detail_why;

  /// No description provided for @course_detail_what.
  ///
  /// In en, this message translates to:
  /// **'What will you be able to do'**
  String get course_detail_what;

  /// No description provided for @course_detail_overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get course_detail_overview;

  /// No description provided for @course_detail_experience_level.
  ///
  /// In en, this message translates to:
  /// **'Experience Level'**
  String get course_detail_experience_level;

  /// No description provided for @course_detail_course_length.
  ///
  /// In en, this message translates to:
  /// **'Course Length'**
  String get course_detail_course_length;

  /// No description provided for @course_detail_list_topics.
  ///
  /// In en, this message translates to:
  /// **'List Topics'**
  String get course_detail_list_topics;

  /// No description provided for @course_detail_suggested_tutors.
  ///
  /// In en, this message translates to:
  /// **'Suggested Tutors'**
  String get course_detail_suggested_tutors;

  /// No description provided for @up_coming_start.
  ///
  /// In en, this message translates to:
  /// **'Start in'**
  String get up_coming_start;

  /// No description provided for @up_coming_started.
  ///
  /// In en, this message translates to:
  /// **'Started about'**
  String get up_coming_started;

  /// No description provided for @video_call_class_started.
  ///
  /// In en, this message translates to:
  /// **'Class started in'**
  String get video_call_class_started;

  /// No description provided for @video_call_class_begin.
  ///
  /// In en, this message translates to:
  /// **'Class will begin in'**
  String get video_call_class_begin;

  /// No description provided for @video_call_button.
  ///
  /// In en, this message translates to:
  /// **'Join meeting'**
  String get video_call_button;

  /// No description provided for @courses_title.
  ///
  /// In en, this message translates to:
  /// **'Discover Courses'**
  String get courses_title;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get course;

  /// No description provided for @courses_sub_title.
  ///
  /// In en, this message translates to:
  /// **'LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.'**
  String get courses_sub_title;

  /// No description provided for @courses_select_level.
  ///
  /// In en, this message translates to:
  /// **'Select level'**
  String get courses_select_level;

  /// No description provided for @courses_select_category.
  ///
  /// In en, this message translates to:
  /// **'Select category'**
  String get courses_select_category;

  /// No description provided for @courses_select_sort_level.
  ///
  /// In en, this message translates to:
  /// **'Sort by level'**
  String get courses_select_sort_level;

  /// No description provided for @sort_asc.
  ///
  /// In en, this message translates to:
  /// **'Level ascending'**
  String get sort_asc;

  /// No description provided for @sort_desc.
  ///
  /// In en, this message translates to:
  /// **'Level descending'**
  String get sort_desc;

  /// No description provided for @schedule_title.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get schedule_title;

  /// No description provided for @schedule_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours'**
  String get schedule_sub_title;

  /// No description provided for @schedule_edit_request.
  ///
  /// In en, this message translates to:
  /// **'Edit Request'**
  String get schedule_edit_request;

  /// No description provided for @schedule_no_request.
  ///
  /// In en, this message translates to:
  /// **'Currently there are no requests for this class. Please write down any requests for the teacher.'**
  String get schedule_no_request;

  /// No description provided for @schedule_session_time.
  ///
  /// In en, this message translates to:
  /// **'Session {value}'**
  String schedule_session_time(Object value);

  /// No description provided for @cancel_booking_title.
  ///
  /// In en, this message translates to:
  /// **'Cancel Booking'**
  String get cancel_booking_title;

  /// No description provided for @cancel_booking_lesson_time.
  ///
  /// In en, this message translates to:
  /// **'Lesson Time'**
  String get cancel_booking_lesson_time;

  /// No description provided for @cancel_booking_reason.
  ///
  /// In en, this message translates to:
  /// **'What was the reason you cancel this booking?'**
  String get cancel_booking_reason;

  /// No description provided for @booking_title.
  ///
  /// In en, this message translates to:
  /// **'Booking Detail'**
  String get booking_title;

  /// No description provided for @booking_time.
  ///
  /// In en, this message translates to:
  /// **'Booking Time'**
  String get booking_time;

  /// No description provided for @booking_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get booking_note;

  /// No description provided for @edit_profile_save.
  ///
  /// In en, this message translates to:
  /// **'Save success'**
  String get edit_profile_save;

  /// No description provided for @edit_profile_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get edit_profile_name;

  /// No description provided for @edit_profile_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get edit_profile_email;

  /// No description provided for @edit_profile_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get edit_profile_phone;

  /// No description provided for @edit_profile_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get edit_profile_country;

  /// No description provided for @edit_profile_birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get edit_profile_birthday;

  /// No description provided for @edit_profile_level.
  ///
  /// In en, this message translates to:
  /// **'My level'**
  String get edit_profile_level;

  /// No description provided for @edit_profile_topic.
  ///
  /// In en, this message translates to:
  /// **'Want to learn'**
  String get edit_profile_topic;

  /// No description provided for @edit_profile_study_schedule.
  ///
  /// In en, this message translates to:
  /// **'Study schedule'**
  String get edit_profile_study_schedule;

  /// No description provided for @edit_profile_button.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get edit_profile_button;

  /// No description provided for @become_tutor_section_1.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get become_tutor_section_1;

  /// No description provided for @become_tutor_section_2.
  ///
  /// In en, this message translates to:
  /// **'CV'**
  String get become_tutor_section_2;

  /// No description provided for @become_tutor_section_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'Students will view this information on your profile to decide if you\'re a good fit for them.'**
  String get become_tutor_section_subtitle_2;

  /// No description provided for @become_tutor_section_3.
  ///
  /// In en, this message translates to:
  /// **'Who I teach'**
  String get become_tutor_section_3;

  /// No description provided for @become_tutor_section_subtitle_3.
  ///
  /// In en, this message translates to:
  /// **'This is the first thing students will see when looking for tutors.'**
  String get become_tutor_section_subtitle_3;

  /// No description provided for @become_tutor_interest.
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get become_tutor_interest;

  /// No description provided for @become_tutor_education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get become_tutor_education;

  /// No description provided for @become_tutor_experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get become_tutor_experience;

  /// No description provided for @become_tutor_profession.
  ///
  /// In en, this message translates to:
  /// **'Current or Previous Profession'**
  String get become_tutor_profession;

  /// No description provided for @become_tutor_language.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get become_tutor_language;

  /// No description provided for @become_tutor_introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get become_tutor_introduction;

  /// No description provided for @become_tutor_target_student.
  ///
  /// In en, this message translates to:
  /// **'I am best at teaching students who are'**
  String get become_tutor_target_student;

  /// No description provided for @become_tutor_specialties.
  ///
  /// In en, this message translates to:
  /// **'My specialties are'**
  String get become_tutor_specialties;

  /// No description provided for @become_tutor_error_avatar.
  ///
  /// In en, this message translates to:
  /// **'Please upload your avatar'**
  String get become_tutor_error_avatar;
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
