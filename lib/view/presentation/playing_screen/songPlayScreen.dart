import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:marquee/marquee.dart';

import 'package:nirvana/Functions/likedSongs.dart';
import 'package:nirvana/controller/fav_screen/fav_screen_bloc.dart';
import 'package:nirvana/controller/now_playling_screen/now_playling_bloc.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

import 'package:nirvana/view/presentation/addPlaylist.dart';
import 'package:nirvana/view/presentation/lyrics_screen/screenLyrics.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongPlayScreen extends StatelessWidget {
  SongPlayScreen({
    Key? key,
    required this.Index,
    required this.audioPlayer,
    required this.songList,
  }) : super(key: key);

  final int Index;
  final List<Audio> songList;
  final AssetsAudioPlayer audioPlayer;

  final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();
  bool playorpauseIcon = true;
  bool isLooping = false;
  bool isSound = true;

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) {
      return element.path == fromPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NowPlaylingBloc>(context).add(const Initialising());
      BlocProvider.of<NowPlaylingBloc>(context).add(
                                      IsFavorite(ID: songList[Index].metas.id!));
    });
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    Box<List> playlistBox = getPlaylistBox();
    final List<Songs> audioFavList =
        playlistBox.get('LikedSongs')!.toList().cast();
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: audioPlayer.builderCurrent(
          builder: (context, playing) {
            final musicAuido = find(songList, playing.audio.assetAudioPath);
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onPanDown: (details) {
                              Navigator.of(context).pop();
                              audioPlayer.stop();
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
                        height: Height / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: Height * 0.3,
                            width: Width * 0.7,
                            child: QueryArtworkWidget(
                              artworkBorder: BorderRadius.circular(10),
                              id: int.parse(musicAuido.metas.id!),
                              type: ArtworkType.AUDIO,
                              nullArtworkWidget: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/concreteGIF.gif'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Height / 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SizedBox(
                          height: Height / 20,
                          width: double.infinity,
                          child: Marquee(
                            blankSpace: 70,
                            startAfter: Duration(seconds: 5),
                            text: audioPlayer.getCurrentAudioTitle,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Height / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            audioPlayer.getCurrentAudioArtist,
                            style: TextStyle(
                                color: Color(0xFFC87DFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Height / 20,
                  ),
                  //blank
                  audioPlayer.builderRealtimePlayingInfos(
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
                          audioPlayer.seek(value);
                        }),
                      ),
                    );
                  }),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         
                             PlayerBuilder.loopMode(
                              player: audioPlayer,
                               builder: (context,loopMode) {
                                 return IconButton(
                                    onPressed: () {
                                      if(loopMode ==LoopMode.playlist){
                                        audioPlayer.setLoopMode(LoopMode.single);
                                      }
                                      else{
                                        audioPlayer.setLoopMode(LoopMode.playlist);
                                      }
                                      log('Loop Button Pressed');
                                    },
                                    icon:(loopMode == LoopMode.playlist)
                                        ? const Icon(
                                            Icons.loop,
                                            size: 30,
                                            color: Color(0xFFD933C3),
                                          )
                                        : const Icon(
                                            Icons.loop,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                  );
                               }
                             ),
                          
                          IconButton(
                              onPressed: () {
                                audioPlayer.previous();
                                BlocProvider.of<NowPlaylingBloc>(context)
                                    .add(IsFavorite(ID: musicAuido.metas.id!));
                              },
                              icon: Icon(
                                Icons.fast_rewind,
                                size: 30,
                                color: Colors.white,
                              )),
                          GestureDetector(
                            onTap: () {
                              audioPlayer.playOrPause();
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFD933C3)),
                              child: PlayerBuilder.isPlaying(
                                player: audioPlayer,
                                builder: (context, isPlaying) {
                                  return isPlaying
                                      ? const Icon(
                                          Icons.pause_rounded,
                                          color: Colors.white,
                                          size: 40,
                                        )
                                      : const Icon(
                                          Icons.play_arrow_rounded,
                                          color: Colors.white,
                                          size: 40,
                                        );
                                },
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () async {
                                //_audioPlayer.next();
                                audioPlayer.next();
                                BlocProvider.of<NowPlaylingBloc>(context)
                                    .add(IsFavorite(ID: musicAuido.metas.id!));
                                
                              },
                              icon: const Icon(
                                Icons.fast_forward,
                                size: 30,
                                color: Colors.white,
                              )),
                         
                              
                             PlayerBuilder.volume(
                              player: audioPlayer,
                               builder: (context,volume) {
                                 return IconButton(
                                    onPressed: () {
                                      // isSound ? soundOff() : soundOn();

                                      if(volume == 0.0){
                                        audioPlayer.setVolume(1);
                                      }
                                      else{
                                        audioPlayer.setVolume(0);
                                      }
                                    },
                                    icon: (volume == 1.0)
                                        ? const Icon(
                                            Icons.music_note_outlined,
                                            size: 30,
                                            color: Colors.white,
                                          )
                                        : const Icon(
                                            Icons.music_off_outlined,
                                            size: 30,
                                            color: Color(0xFFD933C3),
                                          ),
                                  );
                               }
                             ),
                            
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Height / 30,
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
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => Screen_Lyrics(
                                  SongTitile: musicAuido.metas.title!,
                                  SongArtist: musicAuido.metas.artist!,
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.lyrics,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        BlocBuilder<NowPlaylingBloc, NowPlaylingState>(
                          builder: (context, state) {
                            return IconButton(
                                onPressed: () {
                                  PlaylistSongsClass.addSongToLiked(
                                      context: context,
                                      ID: musicAuido.metas.id!);
                                  // PlaylistSongsClass.isLiked(
                                  //     ID: musicAuido.metas.id!);
                                  BlocProvider.of<NowPlaylingBloc>(context).add(
                                      IsFavorite(ID: musicAuido.metas.id!));
                                },
                                icon: Icon(
                                    // PlaylistSongsClass.isLiked(
                                    //     ID: musicAuido.metas.id!),
                                    // state.songList
                                    //         .where((song) =>
                                    //             song.id ==
                                    //             musicAuido.metas.id!)
                                    //         .isNotEmpty
                                    state.isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Color(
                                      0xFFD933C3,
                                    ),
                                    size: 30));
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => AddToPlaylist(
                                  Index: musicAuido.metas.id!,
                                  audioPlayer: audioPlayer,
                                  songList: songList,
                                ),
                              ),
                            );
                          },
                          icon: Icon(Icons.playlist_play,
                              color: Colors.white, size: 30),
                        ),
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
      audioPlayer.open(
        Audio.file(Uri!),
        showNotification: true,
      );
      audioPlayer.play();
    } on Exception {
      print('Song is not Playable');
    }
  }

  // pauseIcons() {
  //   setState(() {
  //     playorpauseIcon = false;
  //   });
  // }

  // PlayIcon() {
  //   setState(() {
  //     playorpauseIcon = true;
  //   });
  // }

  // //code for looping
  // loopingOn() {
  //   audioPlayer.play();
  //   audioPlayer.setLoopMode(LoopMode.single);
  //   PlayIcon();
  //   setState(() {
  //     isLooping = true;
  //   });
  // }

  // loopingOff() {
  //   audioPlayer.setLoopMode(LoopMode.none);
  //   setState(() {
  //     isLooping = false;
  //   });
  // }

  // soundOn() {
  //   audioPlayer.setVolume(1);
  //   setState(() {
  //     isSound = true;
  //   });
  // }

  // soundOff() {
  //   audioPlayer.setVolume(0.0);
  //   setState(() {
  //     isSound = false;
  //   });
  // }
}
