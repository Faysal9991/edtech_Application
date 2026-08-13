import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/core/theme/app_theme.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('academic palette keeps brand and system states separate', () {
    expect(AppColors.primary.toARGB32(), 0xFF155EEF);
    expect(AppColors.secondary.toARGB32(), 0xFF0F9F80);
    expect(AppColors.background.toARGB32(), 0xFFF7F9FC);
    expect(AppColors.textPrimary.toARGB32(), 0xFF0F172A);
    expect(AppColors.warning.toARGB32(), 0xFFF59E0B);
    expect(AppColors.error.toARGB32(), 0xFFDC2626);
    expect(AppColors.primary, isNot(AppColors.success));
  });

  test('theme assigns blue to action and green to progress', () {
    final light = AppTheme.light;
    final dark = AppTheme.dark;

    expect(light.colorScheme.primary, AppColors.primary);
    expect(light.colorScheme.secondary, AppColors.secondary);
    expect(light.progressIndicatorTheme.color, AppColors.secondary);
    expect(light.scaffoldBackgroundColor, AppColors.background);

    expect(dark.colorScheme.primary, AppColors.darkPrimary);
    expect(dark.colorScheme.secondary, AppColors.darkSecondary);
    expect(dark.scaffoldBackgroundColor, AppColors.darkBackground);
  });
}
