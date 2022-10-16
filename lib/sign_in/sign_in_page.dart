import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../auth/auth.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  static const path = '/signIn';
  static const name = 'SignInPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('サインイン')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(
              Buttons.google,
              onPressed: () => ref.read(signInWithGoogleProvider)(),
            ),
          ],
        ),
      ),
    );
  }
}
