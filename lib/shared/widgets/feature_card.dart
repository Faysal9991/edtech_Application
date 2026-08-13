import 'package:edtech_application/shared/animations/pressable_scale.dart';
import 'package:flutter/material.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    required this.title,
    required this.subtitle,
    this.icon,
    this.appIcon,
    required this.color,
    required this.onTap,
    super.key,
  });

  final String title;
  final String subtitle;
  final IconData? icon;
  final List<List<dynamic>>? appIcon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return PressableScale(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: .12),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: appIcon == null
                      ? Icon(icon, color: color)
                      : AppIcon(appIcon!, color: color),
                ),
                const Spacer(),
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
