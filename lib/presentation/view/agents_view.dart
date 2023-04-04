import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/cubit/agents_cubit.dart';
import '../../business_logic/cubit/agents_state.dart';
import '../resources/constants/color_manager.dart';
import '../widgets/card_custom.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  @override
  void initState() {
    super.initState();
    context.read<AgentsCubit>().getAgents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.red,
          title: const Text(
            "Characters",
            style: TextStyle(color: ColorManager.white,fontSize: 20),
            
          ),centerTitle: true,
        ),
        body: BlocBuilder<AgentsCubit, AgentsState>(
          builder: (context, state) {
            if (state is AgentsLoaded) {
              return SingleChildScrollView(
                child: Container(
                    color: ColorManager.grey,
                    child: Column(
                      children: [
                        GridView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2 / 3,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing: 1),
                            itemCount: state.agents.data!.length,
                            itemBuilder: (context, index) => CustomCard(
                                  agent: state.agents.data![index],
                                ))
                      ],
                    )),
              );
            } else if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.red,
                ),
              );
            } else {
              return const Text("There is an error");
            }
          },
        ));
  }
}
