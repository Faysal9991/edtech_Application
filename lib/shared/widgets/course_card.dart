import 'package:edtech_application/core/theme/app_colors.dart';
import 'package:edtech_application/shared/models/course.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:flutter/material.dart';

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
    final color = Color(course.colorValue);
    final foregroundColor =
        ThemeData.estimateBrightnessForColor(color) == Brightness.dark
        ? AppColors.white
        : AppColors.green900;
    final accentColor =
        ThemeData.estimateBrightnessForColor(color) == Brightness.dark
        ? color
        : AppColors.green900;
    final progressColor =
        ThemeData.estimateBrightnessForColor(color) == Brightness.dark
        ? color
        : AppColors.green400;
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
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    _categoryIcon(course.category),
                    color: foregroundColor,
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
                                    color: accentColor,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: .8,
                                  ),
                            ),
                          ),
                          if (course.isBookmarked)
                            Icon(
                              Icons.bookmark_rounded,
                              size: 18,
                              color: accentColor,
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
                          const Icon(Icons.schedule_rounded, size: 15),
                          const SizedBox(width: 4),
                          Text(course.duration),
                          const SizedBox(width: 12),
                          const Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: AppColors.green400,
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
                          color: progressColor,
                          backgroundColor: AppColors.green50,
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

  IconData _categoryIcon(String category) {
    return switch (category.toLowerCase()) {
      'physics' => Icons.science_rounded,
      'chemistry' => Icons.biotech_rounded,
      'biology' => Icons.eco_rounded,
      'english' => Icons.translate_rounded,
      _ => Icons.school_rounded,
    };
  }
}
