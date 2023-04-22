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
  String get error_noInternet => 'A Server Error Occurred';

  @override
  String get error_unknown => 'An Unknown Error Occurred';

  @override
  String get error_somethingWrongTryAgain => 'Something went wrong, try again...';

  @override
  String get email => 'ĐỊA CHỈ email';

  @override
  String get email_hint => 'abc@gmail.com';

  @override
  String get password => 'MẬT KHẨU';

  @override
  String get password_hint => '';

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
}
