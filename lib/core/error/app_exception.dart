import 'package:dio/dio.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';

class AppException implements Exception {
  const AppException(
    this.message, {
    this.statusCode,
    this.requestId,
    this.fieldErrors = const {},
  });

  factory AppException.fromDioException(DioException error) {
    final data = error.response?.data;
    if (data is Map) {
      try {
        final problem = ProblemDetails.fromJson(
          Map<String, dynamic>.from(data),
        );
        return AppException(
          problem.detail?.trim().isNotEmpty == true
              ? problem.detail!
              : problem.title,
          statusCode: problem.status,
          requestId: problem.requestId,
          fieldErrors: {
            for (final item in problem.errors) item.field: item.message,
          },
        );
      } catch (_) {
        final message = data['message'] ?? data['detail'] ?? data['title'];
        if (message is String && message.trim().isNotEmpty) {
          return AppException(message, statusCode: error.response?.statusCode);
        }
      }
    }

    return AppException(
      _fallbackMessage(error.type),
      statusCode: error.response?.statusCode,
    );
  }

  final String message;
  final int? statusCode;
  final String? requestId;
  final Map<String, String> fieldErrors;

  static String _fallbackMessage(DioExceptionType type) {
    return switch (type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout =>
        'Server response দিতে বেশি সময় নিচ্ছে। আবার চেষ্টা করুন।',
      DioExceptionType.connectionError =>
        'Server-এর সঙ্গে সংযোগ পাওয়া যাচ্ছে না। Internet ও API URL দেখুন।',
      DioExceptionType.cancel => 'Request বাতিল হয়েছে।',
      _ => 'কাজটি সম্পন্ন করা যায়নি। আবার চেষ্টা করুন।',
    };
  }

  @override
  String toString() => message;
}
