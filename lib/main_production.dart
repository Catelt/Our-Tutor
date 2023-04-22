import 'package:our_tutor/app/app.dart';
import 'package:our_tutor/locator.dart';

import 'app/network/data/common/http.dart';

void main() {
  XHttp().configDio(baseUrl: 'https://sandbox.api.lettutor.com');
  locator(() => const App());
}
