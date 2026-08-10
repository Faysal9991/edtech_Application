import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('app renders splash screen', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();

    await tester.pumpWidget(
      MyApp(storage: LocalStorage(preferences)),
    );

    await tester.pumpAndSettle();

    expect(find.byType(MyApp), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });
}
