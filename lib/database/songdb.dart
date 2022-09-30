import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class songs extends HiveObject {
  songs({
    required this.songPath,
    required this.songTitle,
    required this.songArtist,
    required this.id,
  });

  @HiveField(0)
  String? songPath;

  @HiveField(1)
  String? songTitle;

  @HiveField(2)
  String? songArtist;

  @HiveField(3)
  int? id;
}
