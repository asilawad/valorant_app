import 'package:flutter/material.dart';
import 'package:movie_app/data/models/agents_model/agents_model.dart';
import '../resources/constants/color_manager.dart';

class CustomCard extends StatelessWidget {
  final CharacterResponse agent;
  const CustomCard({Key? key, required this.agent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
          color: ColorManager.white, borderRadius: BorderRadius.circular(8)),
      child: GridTile(
          child: Container(
            color: ColorManager.grey,
            child: Stack(children: [
              agent.background != null && agent.background!.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: 'assets/animation/circular_loading.gif',
                      image: agent.background!)
                  : Image.network(
                      "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/background.png")

                     ,  agent.fullPortraitV2 != null && agent.fullPortraitV2!.isNotEmpty
                  ? Image.network(
                      agent.fullPortraitV2!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                     )
                  : Image.network(
                      "https://media.valorant-api.com/agents/5f8d3a7f-467b-97f3-062c-13acf203c006/background.png")
            ]),
          ),
          //"backgroundGradientColors": [
          // "ff9c33ff",
          // "b04621ff",
          // "523a23ff",
          // "44412eff"
          // ],
          footer: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Text(
              agent.displayName ?? "Sova",
              style: const TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: ColorManager.white,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
