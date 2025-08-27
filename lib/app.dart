import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fausto/core/localization/l10n/app_localizations.dart';
import 'package:fausto/core/localization/l10n/l10n.dart';
import 'package:fausto/core/providers/theme_provider.dart';
import 'package:fausto/core/routes/app_routes.dart';
import 'package:fausto/shared/styles/app_theme.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late final RouteManager _routeManager;

  @override
  void initState() {
    super.initState();
    _routeManager = RouteManager();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeProvider);
    final themeMode = ref.watch(themeProvider);

    return MaterialApp.router(
      routerConfig: _routeManager.router,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
