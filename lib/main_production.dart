import 'app/app.dart';
import 'firebase/prod/firebase_options.dart';
import 'locator.dart';

void main() async {
  locator(
    options: DefaultFirebaseOptions.currentPlatform,
    builder: () => const App(),
  );
}
