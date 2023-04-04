import 'package:movie_app/data/models/agents_model/agents_model.dart';
import '../api_services/agents_api.dart';

class AgentsRepository {
  final AgentsApi agentsApi = AgentsApi();

  Future<AgentsResponse> getAllCharactersRepo() async {
    final agents = await agentsApi.getAgents();
    return AgentsResponse.fromJson(agents);
  }
}
