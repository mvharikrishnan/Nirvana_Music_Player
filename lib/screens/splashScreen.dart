import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/screens/navigationScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     gotoScreenHome(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connect Music',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'With',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  text: 'NIRVANA',
                  waveColor: Colors.white,
                  boxBackgroundColor: Color(0xFF3B1F50),
                  textStyle: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 100.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
Future<void> gotoScreenHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 7));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => const Screen_Navigation(),
      ),
    );
  }

