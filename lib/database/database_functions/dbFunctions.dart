import 'package:hive/hive.dart';
import 'package:nirvana/model/songdb.dart';

Box<Songs> getSongBox(){
  return Hive.box<Songs>('Songs');
}

Box<List> getPlaylistBox(){
 return Hive.box<List>('Playlist');
}