import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FixedFeePage extends HookConsumerWidget {
  const FixedFeePage({super.key});

  static const path = '/fixedFee';
  static const name = 'FixedFeePage';
  static const location = path;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('固定費')),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
