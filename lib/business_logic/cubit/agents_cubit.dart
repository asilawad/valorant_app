import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/models/agents_model/agents_model.dart';
import '../../data/repository/agents_repository.dart';
import 'agents_state.dart';

class AgentsCubit extends Cubit<AgentsState> {
  final AgentsRepository _agentsRepository;
  late AgentsResponse _agentsResponse;

  AgentsCubit(this._agentsRepository) : super(AgentsInitial());

  getAgents() async {
    emit(LoadingState());
    _agentsResponse = await _agentsRepository.getAllCharactersRepo();
    emit(AgentsLoaded(_agentsResponse));
  }
}
