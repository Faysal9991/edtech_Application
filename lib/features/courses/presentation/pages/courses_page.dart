import 'package:edtech_application/core/routing/app_routes.dart';
import 'package:edtech_application/shared/animations/app_animations.dart';
import 'package:edtech_application/features/home/presentation/controllers/student_lms_controller.dart';
import 'package:edtech_application/shared/localization/app_localizations.dart';
import 'package:edtech_application/shared/widgets/app_icon.dart';
import 'package:edtech_application/shared/widgets/course_card.dart';
import 'package:edtech_application/shared/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  String _selectedCategory = 'all';
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentLmsController>();
    final categoryCourses = _selectedCategory == 'all'
        ? state.courses
        : state.courses
              .where(
                (course) => _selectedCategory == 'Medical'
                    ? course.admissionTarget == 'Medical'
                    : course.educationLevel == _selectedCategory,
              )
              .toList();
    final normalizedQuery = _query.trim().toLowerCase();
    final courses = categoryCourses
        .where(
          (course) =>
              normalizedQuery.isEmpty ||
              course.title.toLowerCase().contains(normalizedQuery) ||
              course.subject.toLowerCase().contains(normalizedQuery) ||
              course.instructor.toLowerCase().contains(normalizedQuery),
        )
        .toList();

    return SafeArea(
      child: Column(
        children: [
          PageHeader(
            title: context.l10n.tr('explore.title'),
            subtitle: context.l10n.tr('explore.subtitle'),
          ),
          AppEntrance.fadeInLeft(
            delay: const Duration(milliseconds: 80),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: context.l10n.tr('home.searchHint'),
                  prefixIcon: const Center(
                    widthFactor: 1,
                    child: AppIcon(AppIcons.search, size: 21),
                  ),
                ),
                onChanged: (value) => setState(() => _query = value),
                onSubmitted: (value) => context
                    .read<StudentLmsController>()
                    .loadCourses(query: value),
              ),
            ),
          ),
          AppEntrance.fadeInRight(
            delay: const Duration(milliseconds: 130),
            child: SizedBox(
              height: 54,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                children: ['all', 'SSC', 'HSC', 'Admission', 'Medical']
                    .map(
                      (category) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(switch (category) {
                            'all' => context.l10n.tr('explore.all'),
                            'Admission' => context.l10n.tr(
                              'category.admission',
                            ),
                            'Medical' => context.l10n.tr('category.medical'),
                            _ => category,
                          }),
                          selected: _selectedCategory == category,
                          onSelected: (_) =>
                              setState(() => _selectedCategory = category),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: state.isLoadingCourses && state.courses.isEmpty
                ? const _CourseLoading()
                : state.coursesError != null && state.courses.isEmpty
                ? _CourseError(
                    message: state.coursesError!,
                    onRetry: () => context
                        .read<StudentLmsController>()
                        .loadCourses(query: _query),
                  )
                : courses.isEmpty
                ? const _EmptyCourses()
                : ListView.separated(
                    padding: const EdgeInsets.fromLTRB(20, 14, 20, 28),
                    itemCount: courses.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final course = courses[index];
                      return StaggeredAnimation(
                        key: ValueKey(course.id),
                        index: index,
                        child: CourseCard(
                          course: course,
                          onTap: () => Navigator.pushNamed(
                            context,
                            AppRoutes.courseDetails,
                            arguments: course,
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _CourseLoading extends StatelessWidget {
  const _CourseLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 28),
      itemCount: 4,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (_, _) => Container(
        height: 142,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}

class _CourseError extends StatelessWidget {
  const _CourseError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppIcon(AppIcons.cloudOff, size: 52),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: onRetry,
              child: Text(context.l10n.tr('common.retry')),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyCourses extends StatelessWidget {
  const _EmptyCourses();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppIcon(AppIcons.empty, size: 52),
            const SizedBox(height: 12),
            Text(
              context.l10n.tr('explore.noCourses'),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
            const SizedBox(height: 5),
            Text(context.l10n.tr('explore.noCoursesSubtitle')),
          ],
        ),
      ),
    );
  }
}
