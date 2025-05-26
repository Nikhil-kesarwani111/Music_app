import '../../Models/service_model/service_model.dart';
import '../services/firebase_service.dart';

class ServiceRepository {
  final FirebaseService _firebaseService;

  ServiceRepository(this._firebaseService);

  Future<List<ServiceModel>> getServices() async {
    final rawList = await _firebaseService.fetchServiceList();
    return rawList.map((json) => ServiceModel.fromJson(json)).toList();
  }
}
