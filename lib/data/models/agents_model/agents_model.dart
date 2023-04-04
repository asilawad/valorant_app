import 'package:movie_app/data/models/agents_model/role_model.dart';
import 'package:movie_app/data/models/agents_model/voiceline_model.dart';

import 'abilities_model.dart';

class AgentsResponse {
  final int? status;

  final List<CharacterResponse>? data;

  AgentsResponse({this.status, this.data});

  factory AgentsResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> characterList = json['data'];
    return AgentsResponse(
        status: json['status'],
        data: json['data'] != null
            ? characterList.map((e) => CharacterResponse.fromJson(e)).toList()
            : null);
  }

  @override
  String toString() => "status: $status, data: $data";
}

class CharacterResponse {
  final String? uuid;

  final String? displayName;

  final String? description;

  final String? developerName;

  final String? displayIcon;

  final String? displayIconSmall;

  final String? background;

  final String? assetPath;
  final String? fullPortraitV2;

  final RoleResponse? role;

  final List<AbilitiesResponse>? abilities;

  final VoiceLineResponse? voiceLine;

  CharacterResponse(
      {this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      this.displayIcon,
      this.displayIconSmall,
      this.background,
      this.assetPath,
      this.role,
      this.abilities,
      this.voiceLine,
      this.fullPortraitV2});

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> abilitiesList = json['abilities'];
    return CharacterResponse(
        uuid: json['uuid'],
        displayName: json['displayName'],
        description: json['description'],
        developerName: json['developerName'],
        displayIcon: json['displayIcon'],
        displayIconSmall: json['displayIconSmall'],
        fullPortraitV2: json['fullPortraitV2'],
        background: json['background'],
        assetPath: json['assetPath'],
        role: json['role'] != null ? RoleResponse.fromJson(json['role']) : null,
        abilities: json['abilities'] != null
            ? abilitiesList.map((e) => AbilitiesResponse.fromJson(e)).toList()
            : null,
        voiceLine: json['voiceLine'] != null
            ? VoiceLineResponse.fromJson(json['voiceLine'])
            : null);
  }

  @override
  String toString() =>
      "role: $role, abilities: $abilities, voiceLine: $voiceLine";
}
