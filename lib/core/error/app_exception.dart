import 'package:dio/dio.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';

class AppException implements Exception {
  const AppException(
    this.message, {
    this.statusCode,
    this.type,
    this.title,
    this.detail,
    this.instance,
    this.requestId,
    this.retryAfter,
    this.fieldErrors = const {},
  });

  factory AppException.fromDioException(DioException error) {
    final data = error.response?.data;
    if (data is Map) {
      try {
        final problem = ProblemDetails.fromJson(
          Map<String, dynamic>.from(data),
        );
        final safeDetail = _safeUserMessage(problem.detail);
        return AppException(
          safeDetail ??
              _statusMessage(
                problem.status,
                _safeUserMessage(problem.title) ??
                    'কাজটি সম্পন্ন করা যায়নি। আবার চেষ্টা করুন।',
              ),
          statusCode: problem.status,
          type: problem.type,
          title: problem.title,
          detail: safeDetail,
          instance: problem.instance,
          requestId: problem.requestId,
          retryAfter: _retryAfter(error),
          fieldErrors: {
            for (final item in problem.errors) item.field: item.message,
          },
        );
      } catch (_) {
        final message = data['message'] ?? data['detail'] ?? data['title'];
        final safeMessage = message is String
            ? _safeUserMessage(message)
            : null;
        if (safeMessage != null) {
          return AppException(
            safeMessage,
            statusCode: error.response?.statusCode,
            retryAfter: _retryAfter(error),
          );
        }
      }
    }

    return AppException(
      _fallbackMessage(error.type),
      statusCode: error.response?.statusCode,
      retryAfter: _retryAfter(error),
    );
  }

  final String message;
  final int? statusCode;
  final String? type;
  final String? title;
  final String? detail;
  final String? instance;
  final String? requestId;
  final Duration? retryAfter;
  final Map<String, String> fieldErrors;

  bool get isPaymentRequired => statusCode == 402;
  bool get isPermissionDenied => statusCode == 403;
  bool get isNotFound => statusCode == 404;
  bool get isConflict => statusCode == 409;
  bool get isValidationFailure => statusCode == 422;
  bool get isRateLimited => statusCode == 429;
  bool get canOfferRetry => statusCode == null || statusCode! >= 500;

  static String _statusMessage(int status, String fallback) => switch (status) {
    401 => 'Session শেষ হয়েছে। আবার sign in করুন।',
    402 => 'এই কাজটি সম্পন্ন করতে payment প্রয়োজন।',
    403 => 'এই কাজের অনুমতি বা enrollment নেই।',
    404 => 'তথ্যটি আর পাওয়া যাচ্ছে না।',
    409 => 'তথ্যটি বদলে গেছে। নতুন তথ্য নিয়ে আবার চেষ্টা করুন।',
    422 => 'দেওয়া তথ্যগুলো যাচাই করুন।',
    429 => 'খুব দ্রুত অনুরোধ করা হয়েছে। কিছুক্ষণ পর চেষ্টা করুন।',
    >= 500 => 'Server-এ সাময়িক সমস্যা হয়েছে। নিরাপদ হলে আবার চেষ্টা করুন।',
    _ => fallback,
  };

  static Duration? _retryAfter(DioException error) {
    final value = error.response?.headers.value('retry-after');
    if (value == null) return null;
    final seconds = int.tryParse(value);
    if (seconds != null && seconds >= 0) return Duration(seconds: seconds);
    final at = DateTime.tryParse(value)?.toUtc();
    if (at == null) return null;
    final duration = at.difference(DateTime.now().toUtc());
    return duration.isNegative ? Duration.zero : duration;
  }

  static String? _safeUserMessage(String? value) {
    final message = value?.trim();
    if (message == null || message.isEmpty || message.length > 500) {
      return null;
    }
    final looksInternal = RegExp(
      r'(stack\s*trace|traceback|sqlstate|\bat\s+[\w.$<>]+\(|(?:/|\\)(?:app|src|lib)(?:/|\\)|\.(?:dart|js|ts|java|kt|py):\d+)',
      caseSensitive: false,
    ).hasMatch(message);
    if (looksInternal || message.contains('\n') || message.contains('\r')) {
      return null;
    }
    return message;
  }

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
