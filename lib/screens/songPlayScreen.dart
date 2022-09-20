import 'package:flutter/material.dart';
import 'package:nirvana/main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPlayScreen extends StatelessWidget {
  const SongPlayScreen({
    Key? key,
    required this.SongTitle,
    required this.songDetails,
    required this.SongImagePath,
    required this.Start,
    required this.end,
  }) : super(key: key);
  final String SongTitle;
  final String SongImagePath;
  final String songDetails;
  final String Start;
  final String end;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onPanDown: (details) {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 13,
                      width: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(121, 212, 148, 238)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 297,
                    width: 297,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(SongImagePath), fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    SongTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    songDetails,
                    style: TextStyle(
                        color: Color(0xFFC87DFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearPercentIndicator(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: 297,
                    barRadius: Radius.circular(20),
                    animation: true,
                    progressColor: Color(0xFFC87DFF),
                    backgroundColor: Color.fromARGB(100, 201, 125, 255),
                    animationDuration: 1000,
                    percent: 0.5,
                    // fillColor: Color(0xFFC87DFF),
                    lineHeight: 10,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
