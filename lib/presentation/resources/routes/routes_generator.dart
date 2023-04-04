import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/cubit/agents_cubit.dart';
import '../../../data/repository/agents_repository.dart';
import 'routes_constants.dart';
import '../../view/agentdetail_view.dart';
import '../../view/agents_view.dart';
import '../constants/strings_manager.dart';

class RoutesGenerator {
  static final AgentsRepository _charactersRepository = AgentsRepository();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouttesConstants.charactersRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => AgentsCubit(_charactersRepository),
                child: const CharactersView()));
      case RouttesConstants.characterDetailRoute:
        return MaterialPageRoute(builder: (_) => const CharacterDetailView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Text(StringsManager.noRouteFound),
          ));
}
