import 'package:dio/dio.dart';
import 'package:edtech_application/core/network/phase_one_dto.dart';
import 'package:edtech_application/features/authentication/data/models/auth_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  // Health and documentation.
  @GET('/health/live')
  Future<RawJsonMap> liveness();

  @GET('/health/ready')
  Future<RawJsonMap> readiness();

  @GET('/metrics')
  @DioResponseType(ResponseType.plain)
  Future<String> metrics();

  @GET('/openapi.yaml')
  @DioResponseType(ResponseType.plain)
  Future<String> openApiSpec();

  // Authentication.
  @POST('/api/v1/auth/register')
  Future<RegistrationResponseDto> register(@Body() RegisterRequest request);

  @POST('/api/v1/auth/login')
  Future<TokenPairDto> login(@Body() LoginRequest request);

  @POST('/api/v1/auth/refresh')
  Future<TokenPairDto> refresh(@Body() RefreshTokenRequest request);

  @POST('/api/v1/auth/logout')
  Future<void> logout(@Body() RefreshTokenRequest request);

  @POST('/api/v1/auth/logout-all')
  Future<void> logoutAll();

  @GET('/api/v1/auth/me')
  Future<AuthUserDto> me();

  @POST('/api/v1/auth/change-password')
  Future<void> changePassword(@Body() ChangePasswordRequest request);

  @POST('/api/v1/auth/forgot-password')
  Future<void> forgotPassword(@Body() ForgotPasswordRequest request);

  @POST('/api/v1/auth/reset-password')
  Future<void> resetPassword(@Body() ResetPasswordRequest request);

  @POST('/api/v1/auth/verify-email')
  Future<void> verifyEmail(@Body() TokenRequest request);

  // Users and profiles.
  @PATCH('/api/v1/users/me')
  Future<RawJsonMap> updateProfile(@Body() ProfileWriteRequest request);

  @GET('/api/v1/admin/users')
  Future<ListResponseDto> adminListUsers(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
    @Query('q') String? query,
    @Query('status') String? status,
    @Query('role') String? role,
  );

  @GET('/api/v1/admin/users/{id}')
  Future<RawJsonMap> adminGetUser(@Path('id') String id);

  @PATCH('/api/v1/admin/users/{id}/status')
  Future<void> adminSetUserStatus(
    @Path('id') String id,
    @Body() UserStatusWriteRequest request,
  );

  @PUT('/api/v1/admin/users/{id}/roles')
  Future<RawJsonMap> adminReplaceUserRoles(
    @Path('id') String id,
    @Body() RoleWriteRequest request,
  );

  // Public and managed courses.
  @GET('/api/v1/courses')
  Future<ListResponseDto> getCourses(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
    @Query('q') String? query,
    @Query('organization_id') String? organizationId,
    @Query('category_id') String? categoryId,
    @Query('level') String? level,
  );

  @GET('/api/v1/courses/{slug}')
  Future<CourseDetailDto> getCourse(@Path('slug') String slug);

  @GET('/api/v1/teacher/courses')
  Future<ListResponseDto> teacherListCourses(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @POST('/api/v1/teacher/courses')
  Future<CourseDto> teacherCreateCourse(@Body() CourseWriteRequest request);

  @GET('/api/v1/teacher/courses/{id}')
  Future<CourseDetailDto> teacherGetCourse(@Path('id') String id);

  @PATCH('/api/v1/teacher/courses/{id}')
  Future<CourseDto> teacherUpdateCourse(
    @Path('id') String id,
    @Body() CourseWriteRequest request,
  );

  @POST('/api/v1/teacher/courses/{id}/submit-review')
  Future<CourseDto> teacherSubmitCourseReview(@Path('id') String id);

  @POST('/api/v1/admin/courses/{id}/publish')
  Future<CourseDto> adminPublishCourse(@Path('id') String id);

  @POST('/api/v1/teacher/courses/{id}/modules')
  Future<RawJsonMap> teacherCreateModule(
    @Path('id') String courseId,
    @Body() ModuleWriteRequest request,
  );

  @PATCH('/api/v1/teacher/modules/{id}')
  Future<RawJsonMap> teacherUpdateModule(
    @Path('id') String id,
    @Body() ModuleWriteRequest request,
  );

  @DELETE('/api/v1/teacher/modules/{id}')
  Future<void> teacherDeleteModule(@Path('id') String id);

  @POST('/api/v1/teacher/modules/{id}/lessons')
  Future<RawJsonMap> teacherCreateLesson(
    @Path('id') String moduleId,
    @Body() LessonWriteRequest request,
  );

  @PATCH('/api/v1/teacher/lessons/{id}')
  Future<RawJsonMap> teacherUpdateLesson(
    @Path('id') String id,
    @Body() LessonWriteRequest request,
  );

  @DELETE('/api/v1/teacher/lessons/{id}')
  Future<void> teacherDeleteLesson(@Path('id') String id);

  // Private media.
  @POST('/api/v1/media/upload-intents')
  Future<UploadIntentDto> createUploadIntent(
    @Body() UploadIntentWriteRequest request,
  );

  @POST('/api/v1/media/{id}/complete')
  Future<RawJsonMap> completeMediaUpload(@Path('id') String id);

  @GET('/api/v1/media/{id}/access-url')
  Future<RawJsonMap> getMediaAccessUrl(@Path('id') String id);

  // Student learning.
  @POST('/api/v1/courses/{id}/enroll')
  Future<EnrollmentDto> enroll(@Path('id') String courseId);

  @GET('/api/v1/student/enrollments')
  Future<ListResponseDto> getStudentEnrollments(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @GET('/api/v1/student/enrollments/{id}')
  Future<RawJsonMap> getStudentEnrollment(@Path('id') String id);

  @PUT('/api/v1/student/enrollments/{id}/lessons/{lessonId}/progress')
  Future<ProgressDto> updateLessonProgress(
    @Path('id') String enrollmentId,
    @Path('lessonId') String lessonId,
    @Body() ProgressWriteRequest request,
  );

  @GET('/api/v1/admin/enrollments')
  Future<ListResponseDto> adminListEnrollments(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
    @Query('status') String? status,
    @Query('course_id') String? courseId,
    @Query('student_id') String? studentId,
  );

  // Quizzes.
  @GET('/api/v1/teacher/quizzes')
  Future<ListResponseDto> teacherListQuizzes(
    @Query('course_id') String courseId,
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @POST('/api/v1/teacher/quizzes')
  Future<RawJsonMap> teacherCreateQuiz(@Body() QuizWriteRequest request);

  @GET('/api/v1/teacher/quizzes/{id}')
  Future<RawJsonMap> teacherGetQuiz(@Path('id') String id);

  @PATCH('/api/v1/teacher/quizzes/{id}')
  Future<RawJsonMap> teacherUpdateQuiz(
    @Path('id') String id,
    @Query('status') String? status,
    @Body() QuizWriteRequest request,
  );

  @DELETE('/api/v1/teacher/quizzes/{id}')
  Future<void> teacherDeleteQuiz(@Path('id') String id);

  @POST('/api/v1/teacher/quizzes/{id}/questions')
  Future<RawJsonMap> teacherCreateQuizQuestion(
    @Path('id') String quizId,
    @Body() QuestionWriteRequest request,
  );

  @PATCH('/api/v1/teacher/quiz-questions/{id}')
  Future<RawJsonMap> teacherUpdateQuizQuestion(
    @Path('id') String id,
    @Body() QuestionWriteRequest request,
  );

  @DELETE('/api/v1/teacher/quiz-questions/{id}')
  Future<void> teacherDeleteQuizQuestion(@Path('id') String id);

  @GET('/api/v1/student/quizzes/{id}/attempts')
  Future<ListResponseDto> getQuizAttempts(
    @Path('id') String quizId,
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @POST('/api/v1/student/quizzes/{id}/attempts')
  Future<QuizAttemptDto> startQuizAttempt(@Path('id') String quizId);

  @PUT('/api/v1/student/quiz-attempts/{id}/answers')
  Future<RawJsonMap> saveQuizAnswer(
    @Path('id') String attemptId,
    @Body() AnswerWriteRequest request,
  );

  @POST('/api/v1/student/quiz-attempts/{id}/submit')
  Future<QuizAttemptDto> submitQuiz(@Path('id') String attemptId);

  // Assignments.
  @GET('/api/v1/teacher/assignments')
  Future<ListResponseDto> teacherListAssignments(
    @Query('course_id') String courseId,
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @POST('/api/v1/teacher/assignments')
  Future<RawJsonMap> teacherCreateAssignment(
    @Body() AssignmentWriteRequest request,
  );

  @GET('/api/v1/teacher/assignments/{id}')
  Future<RawJsonMap> teacherGetAssignment(@Path('id') String id);

  @PATCH('/api/v1/teacher/assignments/{id}')
  Future<RawJsonMap> teacherUpdateAssignment(
    @Path('id') String id,
    @Query('status') String? status,
    @Body() AssignmentWriteRequest request,
  );

  @DELETE('/api/v1/teacher/assignments/{id}')
  Future<void> teacherDeleteAssignment(@Path('id') String id);

  @POST('/api/v1/student/assignments/{id}/submissions')
  Future<RawJsonMap> createAssignmentSubmission(
    @Path('id') String assignmentId,
    @Body() SubmissionWriteRequest request,
  );

  @POST('/api/v1/student/submissions/{id}/submit')
  Future<RawJsonMap> submitAssignment(@Path('id') String submissionId);

  @PATCH('/api/v1/teacher/submissions/{id}/grade')
  Future<RawJsonMap> teacherGradeSubmission(
    @Path('id') String submissionId,
    @Query('return_for_resubmission') bool returnForResubmission,
    @Body() GradeWriteRequest request,
  );

  // Live classes.
  @GET('/api/v1/teacher/live-classes')
  Future<ListResponseDto> teacherListLiveClasses(
    @Query('status') String? status,
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @POST('/api/v1/teacher/live-classes')
  Future<RawJsonMap> teacherCreateLiveClass(
    @Body() LiveSessionWriteRequest request,
  );

  @GET('/api/v1/teacher/live-classes/{id}')
  Future<RawJsonMap> teacherGetLiveClass(@Path('id') String id);

  @PATCH('/api/v1/teacher/live-classes/{id}')
  Future<RawJsonMap> teacherUpdateLiveClass(
    @Path('id') String id,
    @Body() LiveSessionWriteRequest request,
  );

  @DELETE('/api/v1/teacher/live-classes/{id}')
  Future<RawJsonMap> teacherCancelLiveClass(@Path('id') String id);

  @POST('/api/v1/teacher/live-classes/{id}/start')
  Future<RawJsonMap> teacherStartLiveClass(@Path('id') String id);

  @POST('/api/v1/teacher/live-classes/{id}/end')
  Future<RawJsonMap> teacherEndLiveClass(@Path('id') String id);

  @POST('/api/v1/live-classes/{id}/token')
  Future<LiveClassTokenResponse> createLiveClassToken(
    @Path('id') String liveClassId,
  );

  // Payments.
  @POST('/api/v1/payments/orders')
  Future<OrderDto> createPaymentOrder(
    @Header('Idempotency-Key') String idempotencyKey,
    @Body() OrderWriteRequest request,
  );

  @GET('/api/v1/payments/orders/{id}')
  Future<OrderDto> getPaymentOrder(@Path('id') String id);

  @POST('/api/v1/payments/orders/{id}/payment-intent')
  Future<PaymentIntentDto> createPaymentIntent(@Path('id') String id);

  @GET('/api/v1/student/payments')
  Future<ListResponseDto> getStudentPayments(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @GET('/api/v1/admin/payments')
  Future<ListResponseDto> adminListPayments(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
    @Query('status') String? status,
    @Query('user_id') String? userId,
  );

  // Results and certificates.
  @GET('/api/v1/student/results')
  Future<ListResponseDto> getStudentResults(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @GET('/api/v1/student/certificates')
  Future<ListResponseDto> getStudentCertificates(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @GET('/api/v1/student/certificates/{id}/download')
  Future<HttpResponse<dynamic>> getCertificateDownload(
    @Path('id') String id,
    @DioOptions() Options options,
  );

  @GET('/api/v1/certificates/verify/{certificateNumber}')
  Future<CertificateVerificationDto> verifyCertificate(
    @Path('certificateNumber') String certificateNumber,
  );

  // Notifications and device registration.
  @GET('/api/v1/notifications')
  Future<ListResponseDto> getNotifications(
    @Query('cursor') String? cursor,
    @Query('limit') int limit,
  );

  @GET('/api/v1/notifications/unread-count')
  Future<RawJsonMap> getUnreadNotificationCount();

  @PATCH('/api/v1/notifications/{id}/read')
  Future<RawJsonMap> markNotificationRead(@Path('id') String id);

  @POST('/api/v1/devices')
  Future<RawJsonMap> registerDevice(@Body() DeviceTokenWriteRequest request);

  @DELETE('/api/v1/devices/{token}')
  Future<void> removeDevice(@Path('token') String token);

  // Reports.
  @GET('/api/v1/admin/reports/overview')
  Future<RawJsonMap> adminOverviewReport(
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  );

  @GET('/api/v1/admin/reports/revenue')
  Future<RawJsonMap> adminRevenueReport(
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  );

  @GET('/api/v1/teacher/reports/overview')
  Future<RawJsonMap> teacherOverviewReport(
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
  );
}
