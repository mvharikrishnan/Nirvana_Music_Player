import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

import 'package:marquee/marquee.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/playing_screen/songPlayScreen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MiniMusicPlayer extends StatelessWidget {
  MiniMusicPlayer(
      {Key? key,
      required this.audioPlayer,
      required this.index,
      required this.songList})
      : super(key: key);

  final List<Songs> songList;
  final int index;
  final AssetsAudioPlayer audioPlayer;

  List<Audio> songAudio = [];
  bool playbuttonMini = true;

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) => element.path == fromPath);
  }

  convertMusic() {
    for (var song in songList) {
      songAudio.add(
        Audio.file(song.songPath,
            metas: Metas(
              title: song.songTitle,
              id: song.id.toString(),
              artist: song.songArtist,
            )),
      );
    }
  }

  Future<void> openAudioPlayer() async {
    await audioPlayer.open(
      Playlist(audios: songAudio, startIndex: index),
      autoStart: true,
      showNotification: true,
      playInBackground: PlayInBackground.enabled,
    );
  }

  void initState() {
    convertMusic();
    openAudioPlayer();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SongPlayScreen(
        Index: index,
        audioPlayer: audioPlayer,
        songList: songAudio,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return audioPlayer.builderCurrent(
      builder: (context, playing) {
        final musicAudio = find(songAudio, playing.audio.assetAudioPath);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 124, 77,
                              159), //color code for the container 0xFF4F2C69
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 120,
                                child: Marquee(
                                  startAfter: Duration(seconds: 2),
                                  text: audioPlayer.getCurrentAudioTitle,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      audioPlayer.previous();
                                    },
                                    icon: Icon(
                                      Icons.skip_previous_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      audioPlayer.playOrPause();
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFD933C3)),
                                      child: PlayerBuilder.isPlaying(
                                        player: audioPlayer,
                                        builder: (context, isPlaying) {
                                          return isPlaying
                                              ? Icon(
                                                  Icons.pause_rounded,
                                                  color: Colors.white,
                                                  size: 40,
                                                )
                                              : Icon(
                                                  Icons.play_arrow_rounded,
                                                  color: Colors.white,
                                                  size: 40,
                                                );
                                        },
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      audioPlayer.next();
                                    },
                                    icon: Icon(
                                      Icons.skip_next_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: QueryArtworkWidget(
                    artworkWidth: 60,
                    artworkHeight: 60,
                    id: int.parse(musicAudio.metas.id!),
                    type: ArtworkType.AUDIO,
                    artworkBorder: BorderRadius.circular(40),
                    nullArtworkWidget: CircleAvatar(
                      backgroundColor: Color(0xFFD594EE),
                      radius: 35,
                      backgroundImage:
                          AssetImage('assets/images/concreteGIF.gif'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
