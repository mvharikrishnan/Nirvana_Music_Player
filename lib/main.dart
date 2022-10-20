import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/screens/introScreen.dart';
// import 'package:nirvana/screens/homeScreen.dart';
// import 'package:nirvana/screens/navigationScreen.dart';
import 'package:nirvana/screens/splashScreen.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
 if(!Hive.isAdapterRegistered(0)){
   Hive.registerAdapter(SongsAdapter());
 }
  await Hive.openBox<Songs>('Songs');
  await Hive.openBox<List>('Playlist');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //SplashScreen(),
    );
  }
}
