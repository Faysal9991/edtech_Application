import 'package:edtech_application/shared/models/course.dart';

class MockData {
  const MockData._();

  static const courses = <Course>[
    Course(
      id: 'english-admission-mastery',
      title: 'English 1st Paper — Admission Mastery',
      category: 'English',
      subject: 'English 1st Paper',
      educationLevel: 'Admission',
      admissionTarget: 'University',
      instructor: 'Fariha Rahman',
      duration: '৮ ঘণ্টা ২০ মিনিট',
      lessons: 24,
      completedLessons: 16,
      studentCount: 2840,
      priceMinor: 149900,
      rating: 4.9,
      colorValue: 0xFFEAF2FF,
      isBookmarked: true,
      overview:
          'বিশ্ববিদ্যালয় ভর্তি পরীক্ষার English অংশের grammar, vocabulary এবং comprehension-এর পূর্ণাঙ্গ প্রস্তুতি।',
    ),
    Course(
      id: 'hsc-physics-motion',
      title: 'HSC Physics — গতি ও বল',
      category: 'Physics',
      subject: 'Physics',
      educationLevel: 'HSC',
      instructor: 'Sakib Hasan',
      duration: '১২ ঘণ্টা ৪৫ মিনিট',
      lessons: 38,
      completedLessons: 7,
      studentCount: 1930,
      isFree: true,
      rating: 4.8,
      colorValue: 0xFFEAF2FF,
      overview:
          'একাদশ-দ্বাদশ শ্রেণির গতি, নিউটনের সূত্র এবং সংখ্যাভিত্তিক সমস্যার concept-first কোর্স।',
    ),
    Course(
      id: 'hsc-chemistry-organic',
      title: 'HSC Chemistry — Organic Chemistry',
      category: 'Chemistry',
      subject: 'Chemistry',
      educationLevel: 'HSC',
      instructor: 'Nusrat Jahan',
      duration: '৬ ঘণ্টা ১০ মিনিট',
      lessons: 18,
      studentCount: 1260,
      priceMinor: 99900,
      rating: 4.7,
      colorValue: 0xFFEAF2FF,
      overview:
          'Organic reaction, nomenclature এবং board-focused creative question practice।',
    ),
    Course(
      id: 'medical-biology-model-test',
      title: 'Medical Biology Model Test Batch',
      category: 'Biology',
      subject: 'Biology',
      educationLevel: 'Admission',
      admissionTarget: 'Medical',
      instructor: 'Dr. Mehedi Karim',
      duration: '৯ ঘণ্টা ৩০ মিনিট',
      lessons: 30,
      studentCount: 3210,
      priceMinor: 179900,
      rating: 4.9,
      colorValue: 0xFFEAF2FF,
      overview:
          'Medical admission-এর জন্য chapter-wise model test, negative marking এবং merit analysis।',
    ),
  ];
}
