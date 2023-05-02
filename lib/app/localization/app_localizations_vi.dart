import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get common_appTitle => 'Out Tutor';

  @override
  String common_appVersion(String value) {
    return 'Phiên bản $value';
  }

  @override
  String get common_loading => 'Đang tải';

  @override
  String get common_next => 'Tiếp tục';

  @override
  String get common_cancel => 'Hủy';

  @override
  String get common_yes => 'Đúng';

  @override
  String get common_no => 'Không';

  @override
  String get common_close => 'Đóng';

  @override
  String get common_exit => 'Thoát';

  @override
  String get common_back => 'Trở lại';

  @override
  String get common_success => 'Thành công';

  @override
  String get common_submit => 'Gửi';

  @override
  String get error_noInternet => 'A Server Error Occurred';

  @override
  String get error_unknown => 'An Unknown Error Occurred';

  @override
  String get error_somethingWrongTryAgain => 'Có chuyện gì đó không đúng, hãy thử lại...';

  @override
  String get navigation_tutor => 'Gia sư';

  @override
  String get navigation_schedule => 'Lịch Học';

  @override
  String get navigation_history => 'Lịch Sử';

  @override
  String get navigation_course => 'Khóa Học';

  @override
  String get navigation_account => 'Tài Khoản';

  @override
  String get error_sign_in => 'Đăng nhập thất bại.Email hoặc mật khẩu không đúng';

  @override
  String get error_sign_up => 'Đăng ký thất bại. Xin hãy thử lại';

  @override
  String get error_sign_up_email => 'Email đã tồn tại';

  @override
  String get common_empty_field => 'Không được để trống';

  @override
  String get email => 'ĐỊA CHỈ email';

  @override
  String get email_hint => 'abc@gmail.com';

  @override
  String get invalid_email => 'Email không hợp lệ';

  @override
  String get password => 'MẬT KHẨU';

  @override
  String get password_hint => '';

  @override
  String get invalid_password => 'Mật khẩu có ít nhất 6 kí tự';

  @override
  String get sign_in_title => 'Đăng nhập';

  @override
  String get sign_in_subtitle => 'Phát triển kỹ năng tiếng Anh nhanh nhất bằng cách học 1 kèm 1 trực tuyến theo mục tiêu và lộ trình dành cho riêng bạn.';

  @override
  String get sign_in_button => 'ĐĂNG NHẬP';

  @override
  String get sign_in_continue => 'Hoặc tiếp tục với';

  @override
  String get sign_in_forget_password => 'Quên mật khẩu?';

  @override
  String get sign_in_footer => 'Chưa có tài khoản? ';

  @override
  String get sign_up => 'Đăng ký';

  @override
  String get sign_up_title => 'Đăng ký';

  @override
  String get sign_up_footer => 'Đã có tài khoản? ';

  @override
  String get sign_up_button => 'SIGN UP';

  @override
  String get sign_in => 'Đăng nhập';

  @override
  String get forget_password_title => 'Thay đổi mật khẩu';

  @override
  String get forget_password_subtitle => 'Vui lòng nhập email để tìm kiếm tài khoản và thay đổi mật khẩu';

  @override
  String get forget_password_subtitle_success => 'Hãy kiểm tra đường dẫn trong email của bạn để thay đổi mật khẩu';

  @override
  String get forget_password_button => 'Gửi email';

  @override
  String get book_button => 'Đặt lịch';

  @override
  String get favorite => 'Yêu thích';

  @override
  String get report => 'Báo cáo';

  @override
  String get reviews => 'Xem đánh giá';

  @override
  String get record => 'Bản ghi';

  @override
  String get add_a_rating => 'Đánh giá';

  @override
  String get tutor_languages => 'Ngôn ngữ';

  @override
  String get tutor_specialties => 'Chuyên ngành';

  @override
  String get tutor_suggested_courses => 'Khóa học tham khảo';

  @override
  String get tutor_interests => 'Sở thích';

  @override
  String get tutor_teaching_experience => 'Kinh nghiệm giảng dạy';

  @override
  String get history_title => 'Lịch sử các buổi học';

  @override
  String get history_subTitle => 'Đây là danh sách các bài học bạn đã tham gia\nBạn có thể xem lại thông tin chi tiết về các buổi học đã tham gia đã tham gia';

  @override
  String history_lesson_time(String value) {
    return 'Thời gian bài học: $value';
  }

  @override
  String get history_review => 'Đánh giá từ gia sư';

  @override
  String get history_no_review => 'Gia sư chưa có đánh giá';

  @override
  String get history_request => 'Yêu cầu cho buổi học';

  @override
  String get history_no_request => 'Không có yêu cầu cho buổi học';

  @override
  String get discover => 'Khám phá';

  @override
  String report_title(String value) {
    return 'Báo cáo $value';
  }

  @override
  String get report_subtitle => 'Bạn đang gặp phải vấn đề gì';

  @override
  String get setting_edit_profile => 'Chỉnh sửa thông tin';

  @override
  String get setting_language => 'Ngôn ngữ';

  @override
  String get setting_private_policy => 'Chính sách bảo mật';

  @override
  String get setting_button_log_out => 'Đăng xuất';

  @override
  String get title_bottom_select_language => 'Chọn ngôn ngữ';
}
