import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:marquee/marquee.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/screens/songPlayScreen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MiniMusicPlayer extends StatefulWidget {
  const MiniMusicPlayer(
      {Key? key,
      // required this.miniSongTitle,
      // required this.miniSongAuther,
      // required this.miniImagePath,
      // required this.miniSongStart,
      // required this.miniSongEnd,
      // required this.miniSongURI,
      required this.audioPlayer,
      required this.index,
      required this.songList})
      : super(key: key);
  // final String miniImagePath;
  // final String miniSongTitle;
  // final String miniSongAuther;
  // final String miniSongEnd;
  // final String miniSongStart;
  // final String miniSongURI;
  final List<Songs> songList;
  final int index;
  final AssetsAudioPlayer audioPlayer;

  @override
  State<MiniMusicPlayer> createState() => _MiniMusicPlayerState();
}

class _MiniMusicPlayerState extends State<MiniMusicPlayer> {
  List<Audio> songAudio = [];
  bool playbuttonMini = true;
  //bool playorpause = false;
  //final _audioPlayer = AssetsAudioPlayer();
  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) => element.path == fromPath);
  }

  convertMusic() {
    for (var song in widget.songList) {
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
    // convertMusic();
    await widget.audioPlayer.open(
      Playlist(audios: songAudio, startIndex: widget.index),
      autoStart: true,
      showNotification: true,
      playInBackground: PlayInBackground.enabled,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    convertMusic();
    openAudioPlayer();
    super.initState();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SongPlayScreen(
        Index: widget.index,
        audioPlayer: widget.audioPlayer,
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
    return widget.audioPlayer.builderCurrent(
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
                                  text: widget.audioPlayer.getCurrentAudioTitle,
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
                                      widget.audioPlayer.previous();
                                      playMini();
                                    },
                                    icon: Icon(
                                      Icons.skip_previous_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      widget.audioPlayer.playOrPause();
                                      setState(() {
                                        playbuttonMini
                                            ? pausedmini()
                                            : playMini();
                                      });
                                    },
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFFD933C3)),
                                        child: playbuttonMini
                                            ? Icon(
                                                Icons.pause_rounded,
                                                color: Colors.white,
                                                size: 40,
                                              )
                                            : Icon(
                                                Icons.play_arrow_rounded,
                                                color: Colors.white,
                                                size: 40,
                                              )),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      widget.audioPlayer.next();
                                      playMini();
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
                    //child: ,
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 35,
                  // backgroundImage: AssetImage(
                  //     widget.audioPlayer.getCurrentAudioImage.toString()),
                  child: QueryArtworkWidget(
                    id: int.parse(musicAudio.metas.id!),
                    type: ArtworkType.AUDIO,
                    artworkBorder: BorderRadius.circular(10),
                    nullArtworkWidget: CircleAvatar(
                      backgroundColor: Color(0xFFD594EE),
                      radius: 35,
                      backgroundImage:
                          AssetImage('assets/images/wave-sound.gif'),
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

  pausedmini() {
    setState(() {
      playbuttonMini = false;
    });
  }

  playMini() {
    setState(() {
      playbuttonMini = true;
    });
  }
}
