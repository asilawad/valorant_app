class VoiceLineResponse {
  final double? minDuration;

  final double? maxDuration;

  final List<MediaListResponse>? mediaList;

  VoiceLineResponse({this.minDuration, this.maxDuration, this.mediaList});

  factory VoiceLineResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> media = json['mediaList'];
    return VoiceLineResponse(
        minDuration: json['minDuration'],
        maxDuration: json['maxDuration'],
        mediaList: json['mediaList'] != null
            ? media.map((e) => MediaListResponse.fromJson(e)).toList()
            : null);
  }
  @override
  String toString() =>
      "minDuration: $minDuration, maxDuration: $maxDuration, mediaList: $mediaList";
}

class MediaListResponse {
  final int? id;

  final String? wwise;

  final String? wave;

  MediaListResponse({this.id, this.wwise, this.wave});

  factory MediaListResponse.fromJson(Map<String, dynamic> json) =>
      MediaListResponse(
          id: json['id'], wwise: json['wwise'], wave: json['wave']);

  @override
  String toString() => "id: $id, wwise: $wwise, wave: $wave";
}