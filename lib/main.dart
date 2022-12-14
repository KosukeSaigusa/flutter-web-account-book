import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 画面の向きを固定する。
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // Firebase を初期化する。
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // https://firebase.flutter.dev/docs/auth/usage/#persisting-authentication-state
  await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
