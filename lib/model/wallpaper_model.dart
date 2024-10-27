class BaseModel {
  List<WallpaperModel>? photos;

  BaseModel({this.photos});
  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return BaseModel(
        photos: List.from(json['photos'])
            .map(
              (e) => WallpaperModel.fromJson(e),
            )
            .toList());
  }
}

class WallpaperModel {
  String photographer;
  int photographer_id;
  String photographer_url;
  SrcModel src;
  WallpaperModel(
      {required this.photographer,
      required this.photographer_id,
      required this.photographer_url,
      required this.src});

  factory WallpaperModel.fromJson(Map<String, dynamic> json) {
    return WallpaperModel(
        photographer: json["photographer"],
        photographer_id: json["photographer_id"],
        src: SrcModel.fromJson(json["src"]),
        photographer_url: json["photographer_url"]);
  }
}

class SrcModel {
  String original;
  String portrait;
  String small;

  SrcModel(
      {required this.original, required this.portrait, required this.small});

  factory SrcModel.fromJson(Map<String, dynamic> json) {
    return SrcModel(
        original: json["original"],
        portrait: json["portrait"],
        small: json["small"]);
  }
}
