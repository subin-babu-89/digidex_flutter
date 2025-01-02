import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

import 'sample_feature/details/sample_item_details_view.dart';
import 'sample_feature/list/sample_item_list_view.dart';
import 'sample_feature/settings/settings_controller.dart';
import 'sample_feature/settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(routes: [
      GoRoute(
          path: SampleItemListView.routeName,
          builder: (context, state) => SampleItemListView(),
          routes: [
            GoRoute(
              path: '${SampleItemDetailsView.routeName}/:id',
              builder: (context, state) => SampleItemDetailsView(
                id: state.pathParameters['id']!,
              ),
            ),
          ]),
      GoRoute(
        path: SettingsView.routeName,
        builder: (context, state) =>
            SettingsView(controller: settingsController),
      )
    ]);
    // Glue the SettingsController to the MaterialApp.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: const [Locale('en', '')],
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          routerConfig: router,
        );
      },
    );
  }
}
