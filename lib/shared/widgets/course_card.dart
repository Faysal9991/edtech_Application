import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:flutter/material.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    required this.course,
    required this.onTap,
    this.compact = false,
    super.key,
  });

  final Course course;
  final VoidCallback onTap;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final progress = course.lessons == 0
        ? 0.0
        : course.completedLessons / course.lessons;

    return PressableScale(
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: compact ? 64 : 78,
                  height: compact ? 72 : 88,
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppIcon(
                    _categoryIcon(course.category),
                    color: colors.onPrimaryContainer,
                    size: compact ? 28 : 34,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${course.educationLevel} • ${course.subject}',
                              style: Theme.of(context).textTheme.labelSmall
                                  ?.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: .8,
                                  ),
                            ),
                          ),
                          if (course.isBookmarked)
                            AppIcon(
                              AppIcons.bookmark,
                              size: 18,
                              color: AppColors.primary,
                            ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        course.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const AppIcon(AppIcons.clock, size: 15),
                          const SizedBox(width: 4),
                          Text(course.duration),
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: AppColors.warning,
                          ),
                          const SizedBox(width: 3),
                          Text(course.rating.toStringAsFixed(1)),
                          const Spacer(),
                          Text(
                            course.displayPrice,
                            style: const TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      if (course.completedLessons > 0) ...[
                        const SizedBox(height: 10),
                        AnimatedProgressBar(
                          height: 6,
                          value: progress,
                          color: AppColors.secondary,
                          backgroundColor: colors.secondaryContainer,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<List<dynamic>> _categoryIcon(String category) {
    return switch (category.toLowerCase()) {
      'physics' => AppIcons.physics,
      'chemistry' => AppIcons.chemistry,
      'biology' => AppIcons.biology,
      'english' => AppIcons.translate,
      _ => AppIcons.school,
    };
  }
}
