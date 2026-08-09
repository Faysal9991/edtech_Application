import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light => _theme(Brightness.light);
  static ThemeData get dark => _theme(Brightness.dark);

  static ThemeData _theme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;

    final baseScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: brightness,
      primary: isDark ? AppColors.darkPrimary : AppColors.primary,
      secondary: isDark ? AppColors.darkSecondary : AppColors.secondary,
      surface: isDark ? AppColors.darkSurface : AppColors.surface,
    );

    // Fill in the semantic tokens Material 3 widgets actually read from
    // (TextFormField error state, SnackBar, Divider colors, etc). Without
    // this, ColorScheme.fromSeed invents its own error/outline/variant
    // colors instead of using the palette we just fixed.
    final colorScheme = baseScheme.copyWith(
      // Kill the automatic seed-color tint Material 3 applies to
      // elevated surfaces (cards, dialogs, nav bars) — we control
      // elevation via explicit colors instead.
      surfaceTint: AppColors.transparent,
      primary: isDark ? AppColors.darkPrimary : AppColors.primary,
      onPrimary: isDark ? AppColors.darkBackground : AppColors.textOnPrimary,
      primaryContainer: isDark
          ? AppColors.darkPrimaryContainer
          : AppColors.primaryLight,
      onPrimaryContainer: isDark
          ? AppColors.darkTextPrimary
          : AppColors.primaryDark,
      secondary: isDark ? AppColors.darkSecondary : AppColors.secondary,
      onSecondary: isDark ? AppColors.darkBackground : AppColors.textPrimary,
      secondaryContainer: isDark
          ? AppColors.darkSecondaryContainer
          : AppColors.secondaryLight,
      onSecondaryContainer: isDark
          ? AppColors.darkTextPrimary
          : AppColors.secondaryDark,
      error: isDark ? AppColors.darkError : AppColors.error,
      onError: AppColors.textOnPrimary,
      errorContainer: isDark
          ? AppColors.darkErrorBackground
          : AppColors.errorBackground,
      onErrorContainer: isDark ? AppColors.darkError : AppColors.error,
      tertiary: isDark ? AppColors.darkInfo : AppColors.info,
      onTertiary: isDark ? AppColors.darkBackground : AppColors.textOnPrimary,
      tertiaryContainer: isDark
          ? AppColors.darkInfoBackground
          : AppColors.infoBackground,
      onSurface: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
      onSurfaceVariant: isDark
          ? AppColors.darkTextSecondary
          : AppColors.textSecondary,
      outline: isDark ? AppColors.darkBorder : AppColors.border,
      outlineVariant: isDark ? AppColors.darkBorder : AppColors.divider,
      surfaceContainerLowest: isDark
          ? AppColors.darkBackground
          : AppColors.surface,
      surfaceContainerLow: isDark
          ? AppColors.darkSurface
          : AppColors.background,
      surfaceContainer: isDark ? AppColors.darkSurface : AppColors.surface,
      surfaceContainerHigh: isDark
          ? AppColors.darkSurfaceMuted
          : AppColors.surfaceMuted,
      surfaceContainerHighest: isDark
          ? AppColors.darkSurfaceMuted
          : AppColors.surfaceMuted,
    );

    final banglaFont = GoogleFonts.notoSansBengali().fontFamily!;
    final textTheme =
        _withBanglaFallback(
          GoogleFonts.interTextTheme(
            ThemeData(brightness: brightness).textTheme,
          ),
          banglaFont,
        ).apply(
          bodyColor: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
          displayColor: isDark
              ? AppColors.darkTextPrimary
              : AppColors.textPrimary,
        );

    final mutedText = isDark ? AppColors.darkTextMuted : AppColors.textMuted;
    final secondaryText = isDark
        ? AppColors.darkTextSecondary
        : AppColors.textSecondary;
    final borderColor = isDark ? AppColors.darkBorder : AppColors.border;
    final dividerColor = isDark ? AppColors.darkBorder : AppColors.divider;
    // Muted surfaces are neutral in both modes; color is introduced only by
    // explicit brand, progress, or semantic state containers.
    final fieldFill = isDark
        ? AppColors.darkSurfaceMuted
        : AppColors.surfaceMuted;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: isDark
          ? AppColors.darkBackground
          : AppColors.background,
      disabledColor: AppColors.disabled,
      hintColor: mutedText,
      dividerColor: dividerColor,
      splashColor: colorScheme.primary.withValues(alpha: 0.08),
      highlightColor: colorScheme.primary.withValues(alpha: 0.04),

      textTheme: textTheme.copyWith(
        headlineLarge: textTheme.headlineLarge?.copyWith(
          fontWeight: FontWeight.w800,
          letterSpacing: -1.2,
        ),
        headlineMedium: textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w800,
          letterSpacing: -0.8,
        ),
        titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
        titleMedium: textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: textTheme.bodyMedium?.copyWith(height: 1.5),
        bodySmall: textTheme.bodySmall?.copyWith(color: secondaryText),
        labelSmall: textTheme.labelSmall?.copyWith(color: mutedText),
      ),

      iconTheme: IconThemeData(color: secondaryText, size: 24),

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: colorScheme.onSurface),
        titleTextStyle: textTheme.titleLarge?.copyWith(
          color: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
          fontWeight: FontWeight.w800,
        ),
      ),

      cardTheme: CardThemeData(
        color: isDark ? AppColors.darkSurface : AppColors.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: borderColor),
        ),
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: isDark ? AppColors.darkSurface : AppColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w800,
          color: isDark ? AppColors.darkTextPrimary : AppColors.textPrimary,
        ),
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: secondaryText),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: isDark ? AppColors.darkSurface : AppColors.surface,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
      ),

      dividerTheme: DividerThemeData(
        color: dividerColor,
        thickness: 1,
        space: 1,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: fieldFill,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),
        labelStyle: TextStyle(
          color: secondaryText,
          fontWeight: FontWeight.w600,
        ),
        floatingLabelStyle: TextStyle(
          color: colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: TextStyle(color: mutedText),
        errorStyle: TextStyle(
          color: colorScheme.error,
          fontWeight: FontWeight.w500,
          fontSize: 12.5,
        ),
        prefixIconColor: secondaryText,
        suffixIconColor: secondaryText,
        border: _inputBorder(borderColor),
        enabledBorder: _inputBorder(borderColor),
        disabledBorder: _inputBorder(dividerColor),
        focusedBorder: _inputBorder(colorScheme.primary),
        errorBorder: _inputBorder(colorScheme.error),
        focusedErrorBorder: _inputBorder(colorScheme.error),
      ),

      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primary,
        selectionColor: colorScheme.primary.withValues(alpha: 0.24),
        selectionHandleColor: colorScheme.primary,
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          minimumSize: const Size(0, 56),
          side: BorderSide(
            color: colorScheme.primary.withValues(alpha: 0.5),
            width: 1.4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? colorScheme.primary
              : AppColors.transparent,
        ),
        checkColor: WidgetStateProperty.all(AppColors.textOnPrimary),
        side: BorderSide(color: borderColor, width: 1.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? colorScheme.primary
              : AppColors.surface,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? colorScheme.primary.withValues(alpha: 0.4)
              : borderColor,
        ),
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.secondary,
      ),

      listTileTheme: ListTileThemeData(
        iconColor: colorScheme.onSurfaceVariant,
        textColor: colorScheme.onSurface,
        minTileHeight: 56,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          minimumSize: const Size.square(44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: isDark
            ? AppColors.darkSurfaceMuted
            : AppColors.textPrimary,
        contentTextStyle: const TextStyle(color: AppColors.textOnPrimary),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      navigationBarTheme: NavigationBarThemeData(
        height: 72,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: isDark ? AppColors.darkSurface : AppColors.surface,
        indicatorColor: isDark
            ? AppColors.darkPrimaryContainer
            : AppColors.primaryLight,
        iconTheme: WidgetStateProperty.resolveWith(
          (states) => IconThemeData(
            color: states.contains(WidgetState.selected)
                ? colorScheme.primary
                : secondaryText,
            size: 24,
          ),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 12,
            color: states.contains(WidgetState.selected)
                ? colorScheme.primary
                : secondaryText,
            fontWeight: states.contains(WidgetState.selected)
                ? FontWeight.w800
                : FontWeight.w600,
          ),
        ),
      ),

      chipTheme: ChipThemeData(
        backgroundColor: fieldFill,
        selectedColor: isDark
            ? AppColors.darkPrimaryContainer
            : AppColors.primaryLight,
        checkmarkColor: colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: BorderSide.none,
        labelStyle: TextStyle(
          color: secondaryText,
          fontWeight: FontWeight.w600,
        ),
      ),

      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkSurfaceMuted : AppColors.textPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          color: AppColors.textOnPrimary,
          fontSize: 12,
        ),
      ),
    );
  }

  static OutlineInputBorder _inputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: 1.4),
    );
  }

  static TextTheme _withBanglaFallback(TextTheme theme, String banglaFont) {
    TextStyle? fallback(TextStyle? style) =>
        style?.copyWith(fontFamilyFallback: [banglaFont]);

    return theme.copyWith(
      displayLarge: fallback(theme.displayLarge),
      displayMedium: fallback(theme.displayMedium),
      displaySmall: fallback(theme.displaySmall),
      headlineLarge: fallback(theme.headlineLarge),
      headlineMedium: fallback(theme.headlineMedium),
      headlineSmall: fallback(theme.headlineSmall),
      titleLarge: fallback(theme.titleLarge),
      titleMedium: fallback(theme.titleMedium),
      titleSmall: fallback(theme.titleSmall),
      bodyLarge: fallback(theme.bodyLarge),
      bodyMedium: fallback(theme.bodyMedium),
      bodySmall: fallback(theme.bodySmall),
      labelLarge: fallback(theme.labelLarge),
      labelMedium: fallback(theme.labelMedium),
      labelSmall: fallback(theme.labelSmall),
    );
  }
}
