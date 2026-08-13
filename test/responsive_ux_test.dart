import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/main.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/role_navigation_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('authentication remains usable on a narrow large-text device', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 2;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();

    await tester.pumpWidget(MyApp(storage: LocalStorage(preferences)));
    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(milliseconds: 300));

    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(tester.takeException(), isNull);
  });

  testWidgets('role navigation adapts between rail and bottom navigation', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    Widget app() => MaterialApp(
      home: RoleNavigationShell(
        destinations: const [
          RoleDestination(
            label: 'Home',
            icon: AppIcons.home,
            page: ColoredBox(color: Colors.white),
          ),
          RoleDestination(
            label: 'Learning',
            icon: AppIcons.learning,
            page: ColoredBox(color: Colors.white),
          ),
        ],
      ),
    );

    tester.view.physicalSize = const Size(1000, 800);
    await tester.pumpWidget(app());
    expect(find.byType(NavigationRail), findsOneWidget);
    expect(find.byType(NavigationBar), findsNothing);

    tester.view.physicalSize = const Size(390, 800);
    await tester.pumpWidget(app());
    expect(find.byType(NavigationRail), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
