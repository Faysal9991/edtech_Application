import 'package:edtech_application/core/theme/app_layout.dart';
import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:flutter/material.dart';

enum AppStateTone { neutral, info, success, warning, error }

class AppStateView extends StatelessWidget {
  const AppStateView({
    required this.icon,
    required this.title,
    required this.message,
    this.actionLabel,
    this.onAction,
    this.secondaryActionLabel,
    this.onSecondaryAction,
    this.tone = AppStateTone.neutral,
    this.compact = false,
    super.key,
  });

  final List<List<dynamic>> icon;
  final String title;
  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final String? secondaryActionLabel;
  final VoidCallback? onSecondaryAction;
  final AppStateTone tone;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final foreground = switch (tone) {
      AppStateTone.success => colors.onSecondaryContainer,
      AppStateTone.warning =>
        Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkWarningForeground
            : AppColors.warningForeground,
      AppStateTone.error => colors.onErrorContainer,
      AppStateTone.info => colors.onTertiaryContainer,
      AppStateTone.neutral => colors.primary,
    };
    final background = switch (tone) {
      AppStateTone.success => colors.secondaryContainer,
      AppStateTone.warning =>
        Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkWarningBackground
            : AppColors.warningBackground,
      AppStateTone.error => colors.errorContainer,
      AppStateTone.info => colors.tertiaryContainer,
      _ => colors.surfaceContainerHigh,
    };
    return Semantics(
      liveRegion: tone == AppStateTone.error,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: compact ? AppSpacing.md : AppSpacing.xl,
          vertical: compact ? AppSpacing.lg : AppSpacing.xxl,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppIconBadge(
              icon: icon,
              size: compact ? 48 : 64,
              iconSize: compact ? 23 : 30,
              backgroundColor: background,
              foregroundColor: foreground,
            ),
            SizedBox(height: compact ? AppSpacing.sm : AppSpacing.md),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSpacing.xs),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: AppSpacing.lg),
              FilledButton.icon(
                onPressed: onAction,
                icon: const AppIcon(AppIcons.refresh, size: 20),
                label: Text(actionLabel!),
              ),
            ],
            if (secondaryActionLabel != null && onSecondaryAction != null) ...[
              const SizedBox(height: AppSpacing.xs),
              TextButton(
                onPressed: onSecondaryAction,
                child: Text(secondaryActionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class AppLoadingView extends StatelessWidget {
  const AppLoadingView({this.label, this.compact = false, super.key});
  final String? label;
  final bool compact;

  @override
  Widget build(BuildContext context) => Semantics(
    liveRegion: true,
    label: label ?? context.l10n.tr('common.loading'),
    child: Padding(
      padding: EdgeInsets.all(compact ? AppSpacing.lg : AppSpacing.xxl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox.square(
            dimension: 28,
            child: CircularProgressIndicator(strokeWidth: 2.5),
          ),
          if (label != null) ...[
            const SizedBox(height: AppSpacing.sm),
            Text(label!, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ],
      ),
    ),
  );
}

class AppStatusBanner extends StatelessWidget {
  const AppStatusBanner({
    required this.message,
    this.title,
    this.icon = AppIcons.info,
    this.tone = AppStateTone.info,
    this.actionLabel,
    this.onAction,
    super.key,
  });

  final String? title;
  final String message;
  final List<List<dynamic>> icon;
  final AppStateTone tone;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final pair = switch (tone) {
      AppStateTone.error => (colors.errorContainer, colors.onErrorContainer),
      AppStateTone.success => (
        colors.secondaryContainer,
        colors.onSecondaryContainer,
      ),
      AppStateTone.warning => (
        Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkWarningBackground
            : AppColors.warningBackground,
        Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkWarningForeground
            : AppColors.warningForeground,
      ),
      AppStateTone.neutral => (
        colors.surfaceContainerHigh,
        colors.onSurfaceVariant,
      ),
      AppStateTone.info => (
        colors.tertiaryContainer,
        colors.onTertiaryContainer,
      ),
    };
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: pair.$1,
        borderRadius: BorderRadius.circular(AppRadius.lg),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(icon, color: pair.$2, size: 22),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) ...[
                  Text(
                    title!,
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: pair.$2),
                  ),
                  const SizedBox(height: AppSpacing.xxs),
                ],
                Text(
                  message,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: pair.$2),
                ),
              ],
            ),
          ),
          if (actionLabel != null && onAction != null)
            TextButton(onPressed: onAction, child: Text(actionLabel!)),
        ],
      ),
    );
  }
}
