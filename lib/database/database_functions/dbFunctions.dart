import 'package:hive/hive.dart';
import 'package:nirvana/database/songdb.dart';

Box<Songs> getSongBox(){
  return Hive.box<Songs>('Songs');
}