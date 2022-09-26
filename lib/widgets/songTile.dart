import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:nirvana/screens/songPlayScreen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongTile extends StatefulWidget {
  const SongTile({
    Key? key,
    required this.SongTitle,
    required this.SongDetails,
    required this.SongCoverImage,
    required this.StartTimer,
    required this.EndTimer,
    required this.SongURI,
  }) : super(key: key);
  final String SongCoverImage;
  final String SongTitle;
  final String SongDetails;
  final String StartTimer;
  final String EndTimer;
  final String SongURI;

  @override
  State<SongTile> createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SongPlayScreen(
        SongTitle: widget.SongTitle,
        songDetails: widget.SongDetails,
        SongImagePath: widget.SongCoverImage,
        Start: widget.StartTimer,
        end: widget.EndTimer,
        SongUri: widget.SongURI,
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
    return GestureDetector(
      onTap: () async {
        Navigator.of(context).push(_createRoute());
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 9,
        ),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(35, 201, 125, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.SongCoverImage),
                        fit: BoxFit.cover,
                      ),
                      //borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 200,
                        child:
                            //  Marquee(
                            //   text: widget.SongTitle,
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 15,
                            //     fontWeight: FontWeight.w500,
                            //   ),
                            // ),
                            //start here
                            Text(
                          widget.SongTitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        //end here
                      ),
                      Text(
                        widget.SongDetails,
                        style: TextStyle(
                          color: Color(0xFFD594EE),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(
                      0xFFD594EE,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
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
      );
    } on Exception {
      print('Song is not Playable');
    }
  }
}



// Navigator.of(context).push(
//           MaterialPageRoute(
//               builder: (ctx) => SongPlayScreen(
//                     SongTitle: SongTitle,
//                     songDetails: SongDetails,
//                     SongImagePath: SongCoverImage,
//                     Start: StartTimer,
//                     end: EndTimer,
//                   )),
//         );