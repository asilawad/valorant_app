
class RoleResponse {
  final String? uuid;

  final String? displayName;

  final String? description;

  final String? developerName;

  final String? displayIcon;

  final String? assetPath;

  RoleResponse(
      {this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      this.displayIcon,
      this.assetPath});

  factory RoleResponse.fromJson(Map<String, dynamic> json) => RoleResponse(
      uuid: json['uuid'],
      displayName: json['displayName'],
      description: json['description'],
      developerName: json['developerName'],
      displayIcon: json['displayIcon'],
      assetPath: json['assetPath']);

  @override
  String toString() =>
      "uuid: $uuid, displayName: $displayName, description: $description, developerName: $developerName, displayIcon: $displayIcon, assetPath: $assetPath";
}


