import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../auth/auth.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});

  static const path = '/calendar';
  static const name = 'CalendarPage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => ref.read(signOutProvider)(),
              child: const Text('サインアウト'),
            ),
          ],
        ),
      ),
    );
  }
}
