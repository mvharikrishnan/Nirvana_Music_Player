import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/screens/settingsScreen.dart';
import 'package:nirvana/widgets/profileScreenPlaylistTIle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hey,',
                        style: TextStyle(
                            color: Color(
                              0xFFD933C3,
                            ),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      //navigate to settings screen
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>SettingsScreen()));
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Harikrishnan Mv',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage:
                        AssetImage('assets/images/Profile_Avatar.png'),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 31,
                      width: 117,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(102, 124, 75, 162)),
                      child: InkWell(
                        onTap: (() {
                          //Function to Edit Profile
                        }),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //playlist
              Text(
                'Playlist',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              ProfileSceenPlaylistTile(
                PlaylistCoverImage: 'assets/images/Art.jpg',
                PlaylistTitie: 'My Favorite Songs',
              ),
              ProfileSceenPlaylistTile(
                PlaylistCoverImage: 'assets/images/ArtisticIMage.jpg',
                PlaylistTitie: 'Malayalam Songs',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
