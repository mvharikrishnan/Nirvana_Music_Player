import 'package:hive/hive.dart';
part 'songdb.g.dart';
@HiveType(typeId: 0)
class Songs extends HiveObject {
  Songs({
    required this.songPath,
    required this.songTitle,
    required this.songArtist,
    required this.id,
    this.flag=0,
  });

  @HiveField(0)
  String songPath;

  @HiveField(1)
  String songTitle;

  @HiveField(2)
  String songArtist;

  @HiveField(3)
  int id;

  @HiveField(4)
  int flag;
}
