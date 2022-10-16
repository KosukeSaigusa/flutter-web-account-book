import 'package:flutter/material.dart';

import '../calendar/ui/calendar_page.dart';
import '../fixed_fee/ui/fixed_fee_page.dart';
import 'app_route.dart';
import 'ui/main_page.dart';
import 'ui/not_found_page.dart';

/// AppRoute インスタンスの一覧
/// 各ページのコンストラクタに引数を渡さない済むように、そのような場合は ProviderScope.override で
/// appRouterStateProvider の値をオーバーライドして、各画面を AppState をオーバーライドされた
/// Provider 経由で取得するようにする。
final appRoutes = <AppRoute>[
  AppRoute(
    path: MainPage.path,
    name: MainPage.name,
    builder: (context, state) => const MainPage(key: ValueKey(MainPage.name)),
  ),
  AppRoute(
    path: CalendarPage.path,
    name: CalendarPage.name,
    builder: (context, state) => const CalendarPage(key: ValueKey(CalendarPage.name)),
  ),
  AppRoute(
    path: FixedFeePage.path,
    name: FixedFeePage.name,
    builder: (context, state) => const FixedFeePage(key: ValueKey(FixedFeePage.name)),
  ),
  AppRoute(
    path: NotFoundPage.path,
    name: NotFoundPage.name,
    builder: (context, state) => const NotFoundPage(key: ValueKey(NotFoundPage.name)),
  ),
];
