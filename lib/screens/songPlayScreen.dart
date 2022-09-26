import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:nirvana/main.dart';
import 'package:nirvana/screens/addPlaylist.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPlayScreen extends StatefulWidget {
  const SongPlayScreen({
    Key? key,
    required this.SongTitle,
    required this.songDetails,
    required this.SongImagePath,
    required this.Start,
    required this.end,
    required this.SongUri,
  }) : super(key: key);
  final String SongTitle;
  final String SongImagePath;
  final String songDetails;
  final String Start;
  final String end;
  final String SongUri;

  @override
  State<SongPlayScreen> createState() => _SongPlayScreenState();
}

class _SongPlayScreenState extends State<SongPlayScreen> {
  final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();
  bool playorpauseIcon = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PlaySong(widget.SongUri);
  }

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
                      _audioPlayer.stop();
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
                          image: AssetImage(widget.SongImagePath),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Marquee(
                    text: widget.SongTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.songDetails,
                    style: TextStyle(
                        color: Color(0xFFC87DFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     // LinearPercentIndicator(
                  //     //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //     //   width: 297,
                  //     //   barRadius: Radius.circular(20),
                  //     //   animation: true,
                  //     //   progressColor: Color(0xFFC87DFF),
                  //     //   backgroundColor: Color.fromARGB(100, 201, 125, 255),
                  //     //   animationDuration: 1000,
                  //     //   percent: 0.5,
                  //     //   // fillColor: Color(0xFFC87DFF),
                  //     //   lineHeight: 10,
                  //     // ),
                  //   ],
                  // ),

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, right: 60, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.Start,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          widget.end,
                          style: TextStyle(
                              color: Color.fromARGB(204, 113, 66, 147),
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 170,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.loop,
                        size: 30,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fast_rewind,
                        size: 30,
                        color: Colors.white,
                      )),
                  GestureDetector(
                    onTap: () {
                      _audioPlayer.playOrPause();

                      setState(() {
                        playorpauseIcon ? pauseIcons() : PlayIcon();
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFD933C3)),
                      child: playorpauseIcon
                          ? Icon(
                              Icons.pause_rounded,
                              color: Colors.white,
                              size: 40,
                            )
                          : Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        _audioPlayer.next();
                        PlayIcon();
                      },
                      icon: Icon(
                        Icons.fast_forward,
                        size: 30,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.speaker_phone,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 63,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color.fromARGB(74, 212, 148, 238),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_rounded,
                            color: Color(0xFFD933C3), size: 30)),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => AddToPlaylist(),
                            ),
                          );
                        },
                        icon: Icon(Icons.playlist_play,
                            color: Colors.white, size: 30)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PlaySong(String? Uri) {
    try {
      _audioPlayer.open(
        Audio.file(Uri!),
        showNotification: true,
      );
      _audioPlayer.play();
    } on Exception {
      print('Song is not Playable');
    }
  }

  pauseIcons() {
    setState(() {
      playorpauseIcon = false;
    });
  }

  PlayIcon() {
    setState(() {
      playorpauseIcon = true;
    });
  }
}
