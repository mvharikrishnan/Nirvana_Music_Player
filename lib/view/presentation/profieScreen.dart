import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nirvana/controller/profile_screen/profile_screen_bloc.dart';

import 'package:nirvana/view/presentation/Privacy%20Policies/termsAndConditions.dart';
import 'package:nirvana/view/presentation/privacyScreen.dart';
import 'package:nirvana/view/presentation/settings_screen/constants.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

//switch
  // bool isSwitched = true;
  // void toogleSwitch(bool value) {
  //   if (isSwitched == false) {
  //     notification function to set the notification true
  //     setState(() {
  //       isSwitched = true;
  //       audioPlayer.open(showNotification: showNotification);
  //     });
  //   } else {
  //     notification function to set the notification false
  //     setState(() {
  //       isSwitched = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
                      builder: (context, state) {
                        return Text(
                          state.ProfileUserName,
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        );
                      },
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
                              AssetImage('assets/images/profileScreen.png'),
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
                                ProfileEditFunction(context: context);
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
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        // ListTile(
                        //   title: Text(
                        //     'Notification',
                        //     style: TextStyle(
                        //         fontSize: 20,
                        //         color: Colors.white,
                        //         fontWeight: FontWeight.w700),
                        //   ),
                        //   trailing: Switch(
                        //     activeColor: Color(0xFFD933C3),
                        //     value: isSwitched,
                        //     onChanged: toogleSwitch,
                        //   ),
                        // ),

                        ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => TermsAndConditionScreen()));
                          },
                          title: Text(
                            'Terms And Conditions',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PrivacyPolicyScreen()));
                          },
                          title: Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          trailing: Icon(Icons.chevron_right,
                              color: Colors.white, size: 30),
                        ),
                        ListTile(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  icon: Icon(
                                    Icons.crisis_alert_sharp,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    "NIRVANA",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 188, 140, 224),
                                  actions: [
                                    Text(
                                        'Nirvana is an advanced music player where you can get the lyrics of the song that you are playling along with the feature of a  music player.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                    SizedBox(height: 20),
                                    Text('Created by: Harikrishnan MV',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 42, 42, 42)))
                                  ],
                                );
                              },
                            );
                          },
                          title: Text(
                            'About Us',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          trailing: Icon(Icons.chevron_right,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    //THIS IS FOR ADDING SOCIAL MEDIA LINKS IN THE APPLICATION
                    // Text(
                    //   'Connect With Us',
                    //   style: TextStyle(color: Color(0xFFD933C3), fontSize: 20),
                    // ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         Icons.
                    //         size: 48,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 10,
                    //     ),
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         Icons.email,
                    //         size: 48,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          'App Version',
                          style:
                              TextStyle(color: Color(0xFFD594EE), fontSize: 15),
                        ),
                        Text(
                          '1.0.0',
                          style:
                              TextStyle(color: Color(0xFFD594EE), fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //profile edit function
  ProfileEditFunction({required BuildContext context}) async {
    TextEditingController editcontroller = TextEditingController()
      ..text = OldUserName ?? 'Guest';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String oldusername = prefs.getString('userNamekey').toString();
    Future editPlaylist() async {
      Navigator.pop(context);
    }

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 188, 140, 224),
          title: Text('EDIT YOUR NAME'),
          content: TextFormField(
            controller: editcontroller..text = OldUserName ?? 'Guest',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(
                Icons.edit,
                size: 25,
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                //function to edit Profile

                prefs.setString('userNamekey', editcontroller.text.toString());
                final String ProfileNameUser =
                    prefs.getString('userNamekey').toString();
                BlocProvider.of<ProfileScreenBloc>(context)
                    .add(GetUserName(userNameSP: ProfileNameUser));

                Navigator.pop(context);
              },
              child: Text('Confirm'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }
}
