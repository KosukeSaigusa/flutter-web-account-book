// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../app.dart';

// /// runApp() の引数にするべき
// /// アプリケーションのルートのウィジェット
// class RootWidget extends StatefulWidget {
//   const RootWidget({super.key});

//   // 参考（Remi さんの回答）：
//   // https://stackoverflow.com/a/50116077/14440542
//   static void restart(BuildContext context) {
//     context.findAncestorStateOfType<_RootWidgetState>()!.restart();
//   }

//   @override
//   State<StatefulWidget> createState() => _RootWidgetState();
// }

// class _RootWidgetState extends State<RootWidget> {
//   Key _key = UniqueKey();

//   void restart() {
//     setState(() {
//       _key = UniqueKey();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return KeyedSubtree(
//       key: _key,
//       child: const ProviderScope(
//         child: App(),
//       ),
//     );
//   }
// }
