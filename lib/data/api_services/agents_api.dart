import 'package:dio/dio.dart';
import 'api_end_points.dart';
import 'api_service.dart';

class AgentsApi {
  final ApiService _apiService = ApiService();
  AgentsApi();
  getAgents() async {
    try {
      Response response = await _apiService.get(ApiEndPoints.agents);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
