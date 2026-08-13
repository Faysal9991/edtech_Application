import 'package:edtech_application/core/network/mobile_api_dto.dart';

abstract interface class OfflineLearningGateway {
  Future<OfflineEntitlementDto> issueOfflineEntitlement(String enrollmentId);

  Future<OfflineManifestDto> getOfflineManifest(String enrollmentId);

  Future<OfflineChangeListDto> listOfflineChanges({String? cursor});

  Future<SyncResultListDto> syncOfflineProgress(
    List<ProgressSyncOperation> operations,
  );

  Future<SyncResultListDto> syncOfflineAnswers(
    List<AnswerSyncOperation> operations,
  );
}
