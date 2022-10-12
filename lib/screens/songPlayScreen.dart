import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
// import 'package:nirvana/Functions/audioShare.dart';
import 'package:nirvana/Functions/likedSongs.dart';

import 'package:nirvana/screens/addPlaylist.dart';
import 'package:on_audio_query/on_audio_query.dart';
// import 'package:path_provider/path_provider.dart';-
import 'package:share_plus/share_plus.dart';

class SongPlayScreen extends StatefulWidget {
  SongPlayScreen({
    Key? key,
    // required this.SongTitle,
    // required this.songDetails,
    // required this.SongImagePath,
    // required this.Start,
    // required this.end,
    // required this.SongUri,
    required this.Index,
    required this.audioPlayer,
    required this.songList,
  }) : super(key: key);
  // final String SongTitle;
  // final String SongImagePath;
  // final String songDetails;
  // final String Start;
  // final String end;
  // final String SongUri;
  final int Index;
  final List<Audio> songList;
  final AssetsAudioPlayer audioPlayer;

  @override
  State<SongPlayScreen> createState() => _SongPlayScreenState();
}

class _SongPlayScreenState extends State<SongPlayScreen> {
  final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();
  bool playorpauseIcon = true;
  bool isLooping = false;
  bool isSound = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //PlaySong(widget.songList[widget.Index].songPath);
  }

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) {
      return element.path == fromPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: widget.audioPlayer.builderCurrent(
          builder: (context, playing) {
            final musicAuido =
                find(widget.songList, playing.audio.assetAudioPath);
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onPanDown: (details) {
                          Navigator.of(context).pop();
                          widget.audioPlayer.stop();
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
                        child: QueryArtworkWidget(
                          artworkBorder: BorderRadius.circular(10),
                          id: int.parse(musicAuido.metas.id!),
                          type: ArtworkType.AUDIO,
                          nullArtworkWidget: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/concreteGIF.gif'),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        text: widget.audioPlayer.getCurrentAudioTitle,
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
                        widget.audioPlayer.getCurrentAudioArtist,
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
                  widget.audioPlayer.builderRealtimePlayingInfos(
                      builder: (context, info) {
                    final duration = info.current!.audio.duration;
                    final progress = info.currentPosition;
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ProgressBar(
                        //progress: Duration(milliseconds: 1000),
                        progress: progress,
                        //total: Duration(milliseconds: 2000),
                        total: duration,
                        progressBarColor: Color(0xFFD933C3),
                        thumbColor: Color(0xFFD933C3),
                        thumbGlowColor: Color.fromARGB(103, 217, 51, 195),
                        baseBarColor: Color.fromARGB(87, 217, 51, 195),
                        barHeight: 8,
                        timeLabelTextStyle:
                            TextStyle(color: Colors.white, fontSize: 13),
                        onSeek: ((value) {
                          widget.audioPlayer.seek(value);
                        }),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          isLooping ? loopingOff() : loopingOn();
                        },
                        icon: isLooping
                            ? Icon(
                                Icons.loop,
                                size: 30,
                                color: Color(0xFFD933C3),
                              )
                            : Icon(
                                Icons.loop,
                                size: 30,
                                color: Colors.white,
                              ),
                      ),
                      IconButton(
                          onPressed: () {
                            widget.audioPlayer.previous();
                          },
                          icon: Icon(
                            Icons.fast_rewind,
                            size: 30,
                            color: Colors.white,
                          )),
                      GestureDetector(
                        onTap: () {
                          widget.audioPlayer.playOrPause();

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
                          onPressed: () async {
                            //_audioPlayer.next();
                            await widget.audioPlayer.next();
                            PlayIcon();
                          },
                          icon: Icon(
                            Icons.fast_forward,
                            size: 30,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: () {
                          isSound ? soundOff() : soundOn();
                        },
                        icon: isSound
                            ? Icon(
                                Icons.music_note_outlined,
                                size: 30,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.music_off_outlined,
                                size: 30,
                                color: Color(0xFFD933C3),
                              ),
                      ),
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
                            onPressed: () async {
                            
                              await Share.share(musicAuido.metas.title!);

                              //functon to share audio here////
                            },
                            icon: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                PlaylistSongsClass.addSongToLiked(
                                    context: context,
                                    ID: widget.songList[widget.Index].path);
                                PlaylistSongsClass.isLiked(
                                    ID: widget.songList[widget.Index].path);
                              });
                            },
                            icon: Icon(
                                //
                                PlaylistSongsClass.isLiked(
                                    ID: widget.songList[widget.Index].path),
                                color: Color(
                                  0xFFD933C3,
                                ),
                                size: 30)),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => AddToPlaylist(
                                    Index: widget.songList[widget.Index].path,
                                    audioPlayer: widget.audioPlayer,
                                    songList: widget.songList,
                                  ),
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
            );
          },
        ),
      ),
    );
  }

  PlaySong(String? Uri) {
    try {
      widget.audioPlayer.open(
        Audio.file(Uri!),
        showNotification: true,
      );
      widget.audioPlayer.play();
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

  //code for looping
  loopingOn() {
    widget.audioPlayer.play();
    widget.audioPlayer.setLoopMode(LoopMode.single);
    PlayIcon();
    setState(() {
      isLooping = true;
    });
  }

  loopingOff() {
    widget.audioPlayer.setLoopMode(LoopMode.none);
    setState(() {
      isLooping = false;
    });
  }

  soundOn() {
    widget.audioPlayer.setVolume(1);
    setState(() {
      isSound = true;
    });
  }

  soundOff() {
    widget.audioPlayer.setVolume(0.0);
    setState(() {
      isSound = false;
    });
  }
}
