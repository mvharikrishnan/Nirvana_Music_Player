import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/screens/favoriteScreen.dart';
import 'package:nirvana/screens/homeScreen.dart';
import 'package:nirvana/screens/playlistScreen.dart';
import 'package:nirvana/screens/profieScreen.dart';

class Screen_Navigation extends StatefulWidget {
  const Screen_Navigation({Key? key}) : super(key: key);

  @override
  State<Screen_Navigation> createState() => _Screen_NavigationState();
}

class _Screen_NavigationState extends State<Screen_Navigation> {
  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    FavoriteScreen(),
    PlaylistScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.white,
        unselectedItemColor: Color(0xFFC87DFF),
        backgroundColor: Color.fromARGB(119, 201, 125, 255),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Playlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
