import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/network/data/common/http.dart';
import 'firebase/prod/firebase_options.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {};

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  XHttp().configDio(baseUrl: 'https://sandbox.api.lettutor.com');
  locator(() => const App());
}
