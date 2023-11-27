import 'app/app.dart';
import 'firebase/dev/firebase_options.dart';
import 'locator.dart';

void main() async {
  locator(
    options: DefaultFirebaseOptions.currentPlatform,
    builder: () => const App(),
  );
}
