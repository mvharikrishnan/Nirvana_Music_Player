import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:nirvana/screens/homeScreen.dart';
import 'package:nirvana/screens/splashScreen.dart';
import 'package:nirvana/widgets/textFormField.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //main column
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/creativeWomen.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        'Every Music is like a painting',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            height: 3),
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: editingController,
                  decoration: InputDecoration(
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: Color.fromARGB(62, 201, 125, 255),
                    filled: true,
                    hintText: 'Enter Your Name',
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: ActionSlider.standard(
                    icon: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    toggleColor: Color.fromARGB(255, 161, 42, 161),
                    backgroundColor: Colors.white,
                    child: Text(
                      'Slide to confirm',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    action: (controller) async {
                      controller.loading();
          
                      {
                        addNameToSF(UserName: editingController.text.toString());
                        await Future.delayed(const Duration(seconds: 3));
                        controller.success();
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (ctx) => HomeScreen()),
                            (route) => false);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  addNameToSF({required String UserName}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userNamekey', UserName);
    prefs.setBool('SaveLogKey', true);
  }
}
