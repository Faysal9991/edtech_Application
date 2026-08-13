import 'package:edtech_application/core/storage/local_storage.dart';
import 'package:edtech_application/main.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('mock sign in opens the animated home experience', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    SharedPreferences.setMockInitialValues({});
    final preferences = await SharedPreferences.getInstance();

    await tester.pumpWidget(MyApp(storage: LocalStorage(preferences)));
    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('আবার স্বাগতম'), findsOneWidget);
    expect(find.text('সাইন ইন'), findsOneWidget);

    final fields = find.byType(TextFormField);
    await tester.enterText(fields.at(0), 'preview@learnly.app');
    await tester.enterText(fields.at(1), 'preview-only');
    await tester.ensureVisible(find.text('সাইন ইন'));
    await tester.tap(find.text('সাইন ইন'));

    await tester.pump(const Duration(milliseconds: 700));
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.textContaining('শুভ সকাল'), findsOneWidget);
    expect(find.text('আজকের কাজ'), findsOneWidget);
    expect(find.text('হোম'), findsOneWidget);
    expect(find.text('এক্সপ্লোর'), findsOneWidget);
    expect(find.text('লার্নিং'), findsOneWidget);
    expect(find.text('রেজাল্ট'), findsOneWidget);
    expect(find.text('প্রোফাইল'), findsOneWidget);
  });

  test('Bangla and English resources stay in sync', () {
    const bangla = AppLocalizations(Locale('bn'));
    const english = AppLocalizations(Locale('en'));

    expect(bangla.tr('nav.learning'), 'লার্নিং');
    expect(english.tr('nav.learning'), 'Learning');
    expect(
      bangla.tr('home.greeting', args: {'name': 'Faysal'}),
      'শুভ সকাল, Faysal 👋',
    );
    expect(bangla.number(125), '১২৫');
    expect(AppLocalizations.missingKeys('bn'), isEmpty);
  });
}
