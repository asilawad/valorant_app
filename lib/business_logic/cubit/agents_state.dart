import 'package:movie_app/data/models/agents_model/agents_model.dart';

abstract class AgentsState {}

class AgentsInitial extends AgentsState {}

class LoadingState extends AgentsState {}

class AgentsLoaded extends AgentsState {
  final AgentsResponse agents;
  AgentsLoaded(this.agents);
}
