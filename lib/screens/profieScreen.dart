import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/screens/settingsScreen.dart';
import 'package:nirvana/widgets/profileScreenPlaylistTIle.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String ProfileNameUser = 'Guest';
  getUnsernaemFromSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String Username = prefs.getString('userNamekey').toString();
    setState(() {
      ProfileNameUser = Username;
    });
  }

//switch
  bool isSwitched = false;
  void toogleSwitch(bool value) {
    if (isSwitched == false) {
      //notification function to set the notification true
      setState(() {
        isSwitched = true;
      });
    } else {
      //notification function to set the notification false
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUnsernaemFromSP();
  }

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
                  // IconButton(
                  //   onPressed: () {
                  //     //navigate to settings screen
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (ctx) => SettingsScreen()));
                  //   },
                  //   icon: Icon(
                  //     Icons.settings,
                  //     size: 32,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ],
              ),
              Column(
                children: [
                  Text(
                    ProfileNameUser,
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
                  ListTile(
                    title: Text(
                      'Notification',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Switch(
                      activeColor: Color(0xFFD933C3),
                      value: isSwitched,
                      onChanged: toogleSwitch,
                    ),
                  ),
                  ListTile(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //profile edit function
  ProfileEditFunction({required BuildContext context}) async {
    TextEditingController editcontroller = TextEditingController();
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
            controller: editcontroller,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: oldusername,
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
                setState(() {
                  prefs.setString(
                      'userNamekey', editcontroller.text.toString());
                  ProfileNameUser = prefs.getString('userNamekey').toString();
                });
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
