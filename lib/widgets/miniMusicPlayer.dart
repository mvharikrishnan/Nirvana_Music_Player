import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MiniMusicPlayer extends StatelessWidget {
  const MiniMusicPlayer({
    Key? key,
    required this.miniSongTitle,
    required this.miniSongAuther,
    required this.miniImagePath,
    required this.miniSongStart,
    required this.miniSongEnd,
  }) : super(key: key);
  final String miniImagePath;
  final String miniSongTitle;
  final String miniSongAuther;
  final String miniSongEnd;
  final String miniSongStart;
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              height: 65,
              width: 350,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF4F2C69),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      miniSongTitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.fast_rewind,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Color(0xFFD933C3)),
                            child: Icon(
                              Icons.pause_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.fast_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //child: ,
            ),
          ),
        ),
        Positioned(
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(miniImagePath),
          ),
        ),
      ],
    );
  }
}
