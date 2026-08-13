import 'package:flutter/foundation.dart';

/// Mutable request context shared by the session controller and LMS client.
///
/// It carries no credential. Role namespaces authorize endpoints; only the
/// selected, server-revalidated organization is sent as a request header.
class OrganizationContext extends ChangeNotifier {
  String? _organizationId;
  int _generation = 0;

  String? get organizationId => _organizationId;
  int get generation => _generation;

  void select(String organizationId) {
    if (_organizationId == organizationId) return;
    _organizationId = organizationId;
    _generation++;
    notifyListeners();
  }

  void clear() {
    if (_organizationId == null) return;
    _organizationId = null;
    _generation++;
    notifyListeners();
  }
}
