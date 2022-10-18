import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/Lyrics/lyricsAPI.dart';

class Screen_Lyrics extends StatefulWidget {
  const Screen_Lyrics(
      {super.key, required this.SongTitile, required this.SongArtist});
  final String SongTitile;
  final String SongArtist;

  @override
  State<Screen_Lyrics> createState() => _Screen_LyricsState();
}

class _Screen_LyricsState extends State<Screen_Lyrics> {
  String Lyrics = 'Click To get the lyrics';
  @override
  Widget build(BuildContext context) {
    log('Buiding');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF3B1F50),
        elevation: 0,
        title: Text(
          widget.SongTitile,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  //Function to get lyrics
                  log('Await Start');
                  var _result = await getLyrics(
                      name: widget.SongTitile, artist: widget.SongArtist);
                  log('Await finish');
                  print(_result.name);
                  print(
                      '<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
                  print(_result.lyrics);
                  setState(() {
                    Lyrics = _result.lyrics!;
                  });
                },
                child: Container(
                  height: 42,
                  width: 145,
                  decoration: BoxDecoration(
                      color: Color(0xFFD933C3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'Get Lyrics',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 700,
              width: 500,
              child: SingleChildScrollView(
                child: Text(
                  Lyrics,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
