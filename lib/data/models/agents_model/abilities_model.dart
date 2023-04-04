
class AbilitiesResponse {
  final String? slot;

  final String? displayName;

  final String? description;

  final String? displayIcon;

  AbilitiesResponse(
      {this.slot, this.displayName, this.description, this.displayIcon});

  factory AbilitiesResponse.fromJson(Map<String, dynamic> json) =>
      AbilitiesResponse(
          slot: json['slot'],
          displayName: json['displayName'],
          description: json['description'],
          displayIcon: json['displayIcon']);

  @override
  String toString() =>
      "slot: $slot, displayName: $displayName, description: $description, displayIcon: $displayIcon";
}
