import 'app/app.dart';
import 'app/network/data/common/http.dart';
import 'locator.dart';

void main() {
  XHttp().configDio(baseUrl: 'https://sandbox.api.lettutor.com');
  locator(() => const App());
}
