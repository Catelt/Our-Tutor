import 'app_localizations.dart';

// ignore_for_file: type=lint

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
  String get common_success => 'Success';

  @override
  String get common_submit => 'Submit';

  @override
  String get common_reset => 'Reset Filter';

  @override
  String get common_empty => 'No data';

  @override
  String get common_go_meeting => 'Go to meeting';

  @override
  String get error_noInternet => 'A Server Error Occurred';

  @override
  String get error_unknown => 'An Unknown Error Occurred';

  @override
  String get error_somethingWrongTryAgain => 'Something went wrong, try again...';

  @override
  String get navigation_tutor => 'Tutor';

  @override
  String get navigation_schedule => 'Schedule';

  @override
  String get navigation_history => 'History';

  @override
  String get navigation_course => 'Course';

  @override
  String get navigation_account => 'Account';

  @override
  String get error_sign_in => 'Log in failed. Incorrect email or password';

  @override
  String get success_sign_up => 'Sign up successful. Please check your email to verify the account';

  @override
  String get error_sign_up => 'Sign up failed. Please try again';

  @override
  String get error_sign_up_email => 'Email already exists';

  @override
  String get error_sign_in_google => 'Sign in google fail';

  @override
  String get common_empty_field => 'Field is requirement';

  @override
  String get email => 'EMAIL';

  @override
  String get email_hint => 'abc@gmail.com';

  @override
  String get invalid_email => 'Email is invalid';

  @override
  String get password_not_match => 'Doesn\'t match password';

  @override
  String get password => 'PASSWORD';

  @override
  String get password_confirm => 'CONFIRM PASSWORD';

  @override
  String get password_hint => '';

  @override
  String get invalid_password => 'Password with at least 6 characters';

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

  @override
  String get forget_password_title => 'Reset Password';

  @override
  String get forget_password_subtitle => 'Please enter your email address to search for your account.';

  @override
  String get forget_password_subtitle_success => 'Check your inbox for a link to reset your password.';

  @override
  String get forget_password_button => 'Send Email';

  @override
  String get book_button => 'Book';

  @override
  String get favorite => 'Favorite';

  @override
  String get report => 'Report';

  @override
  String get reviews => 'Reviews';

  @override
  String get record => 'Record';

  @override
  String get lesson => 'lesson';

  @override
  String get add_a_rating => 'Add a Rating';

  @override
  String get enter_lesson_room => 'Enter lesson room';

  @override
  String get tutors_find_tutor => 'Find a tutor';

  @override
  String get tutors_find_tutor_hint => 'Enter tutor name';

  @override
  String get tutors_find_tutor_national_hint => 'Select tutor nationality';

  @override
  String get tutors_up_coming => 'Upcoming lesson';

  @override
  String tutors_total_time(int hours, int minutes) {
    return 'Total lesson time is $hours hours $minutes minutes';
  }

  @override
  String get tutor_languages => 'Languages';

  @override
  String get tutor_specialties => 'Specialties';

  @override
  String get tutor_suggested_courses => 'Suggested courses';

  @override
  String get tutor_interests => 'Interests';

  @override
  String get tutor_teaching_experience => 'Teaching experience';

  @override
  String get history_title => 'History';

  @override
  String get history_subTitle => 'The following is a list of lessons you have attended\nYou can review the details of the lessons you have attended';

  @override
  String history_lesson_time(String value) {
    return 'Lesson Time: $value';
  }

  @override
  String get history_review => 'Review from tutor';

  @override
  String get history_no_review => 'Tutor haven\'t reviewed yet';

  @override
  String get history_request => 'Request for lesson';

  @override
  String get history_no_request => 'No request for lesson';

  @override
  String get discover => 'Discover';

  @override
  String report_title(String value) {
    return 'Report $value';
  }

  @override
  String get report_subtitle => 'Help us understand what\'s happening';

  @override
  String get setting_edit_profile => 'Edit profile';

  @override
  String get setting_become_tutor => 'Become tutor';

  @override
  String get setting_language => 'Language Preferences';

  @override
  String get setting_theme => 'Theme Mode';

  @override
  String get setting_private_policy => 'Private Policy';

  @override
  String get setting_button_log_out => 'Log out';

  @override
  String get title_bottom_select_language => 'Select Language';

  @override
  String get hint_edit_text => 'Start typing or taking';

  @override
  String get is_listening_gpt => 'listening...';

  @override
  String get title_bottom_select_theme => 'Select Theme';

  @override
  String get system_theme => 'System';

  @override
  String get dark_theme => 'Dark';

  @override
  String get light_theme => 'Light';

  @override
  String get topics => 'topics';

  @override
  String get more_info => 'More info';

  @override
  String get course_detail_why => 'Why take this course';

  @override
  String get course_detail_what => 'What will you be able to do';

  @override
  String get course_detail_overview => 'Overview';

  @override
  String get course_detail_experience_level => 'Experience Level';

  @override
  String get course_detail_course_length => 'Course Length';

  @override
  String get course_detail_list_topics => 'List Topics';

  @override
  String get course_detail_suggested_tutors => 'Suggested Tutors';

  @override
  String get up_coming_start => 'Start in';

  @override
  String get up_coming_started => 'Started about';

  @override
  String get video_call_class_started => 'Class started in';

  @override
  String get video_call_class_begin => 'Class will begin in';

  @override
  String get video_call_button => 'Join meeting';

  @override
  String get courses_title => 'Discover Courses';

  @override
  String get course => 'Course';

  @override
  String get courses_sub_title => 'LiveTutor has built the most quality, methodical and scientific courses in the fields of life for those who are in need of improving their knowledge of the fields.';

  @override
  String get courses_select_level => 'Select level';

  @override
  String get courses_select_category => 'Select category';

  @override
  String get courses_select_sort_level => 'Sort by level';

  @override
  String get sort_asc => 'Level ascending';

  @override
  String get sort_desc => 'Level descending';

  @override
  String get schedule_title => 'Schedule';

  @override
  String get schedule_sub_title => 'Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours';

  @override
  String get schedule_edit_request => 'Edit Request';

  @override
  String get schedule_no_request => 'Currently there are no requests for this class. Please write down any requests for the teacher.';

  @override
  String schedule_session_time(Object value) {
    return 'Session $value';
  }

  @override
  String get cancel_booking_title => 'Cancel Booking';

  @override
  String get cancel_booking_lesson_time => 'Lesson Time';

  @override
  String get cancel_booking_reason => 'What was the reason you cancel this booking?';

  @override
  String get booking_title => 'Booking Detail';

  @override
  String get booking_time => 'Booking Time';

  @override
  String get booking_note => 'Note';

  @override
  String get edit_profile_save => 'Save success';

  @override
  String get edit_profile_name => 'Name';

  @override
  String get edit_profile_email => 'Email';

  @override
  String get edit_profile_phone => 'Phone number';

  @override
  String get edit_profile_country => 'Country';

  @override
  String get edit_profile_birthday => 'Birthday';

  @override
  String get edit_profile_level => 'My level';

  @override
  String get edit_profile_topic => 'Want to learn';

  @override
  String get edit_profile_study_schedule => 'Study schedule';

  @override
  String get edit_profile_button => 'Save';

  @override
  String get become_tutor_section_1 => 'Basic Info';

  @override
  String get become_tutor_section_2 => 'CV';

  @override
  String get become_tutor_section_subtitle_2 => 'Students will view this information on your profile to decide if you\'re a good fit for them.';

  @override
  String get become_tutor_section_3 => 'Who I teach';

  @override
  String get become_tutor_section_subtitle_3 => 'This is the first thing students will see when looking for tutors.';

  @override
  String get become_tutor_interest => 'Interests';

  @override
  String get become_tutor_education => 'Education';

  @override
  String get become_tutor_experience => 'Experience';

  @override
  String get become_tutor_profession => 'Current or Previous Profession';

  @override
  String get become_tutor_language => 'Languages';

  @override
  String get become_tutor_introduction => 'Introduction';

  @override
  String get become_tutor_target_student => 'I am best at teaching students who are';

  @override
  String get become_tutor_specialties => 'My specialties are';

  @override
  String get become_tutor_error_avatar => 'Please upload your avatar';
}
