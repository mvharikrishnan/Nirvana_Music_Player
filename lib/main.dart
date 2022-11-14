import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nirvana/controller/fav_screen/fav_screen_bloc.dart';

import 'package:nirvana/controller/home_screen/home_screen_bloc.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/introduction_screen/introScreen.dart';
// import 'package:nirvana/screens/homeScreen.dart';
// import 'package:nirvana/screens/navigationScreen.dart';
import 'package:nirvana/view/presentation/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => FavScreenBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        //SplashScreen(),
      ),
    );
  }
}
