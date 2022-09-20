
import 'package:flutter/material.dart';

class PlaylistHomeScreenTile extends StatelessWidget {
  const PlaylistHomeScreenTile({
    Key? key,
    required this.PlaylistCoverIMGPath,
    required this.PlaylistName,
    required this.songsCountInPlaylist,
  }) : super(key: key);
  final String PlaylistName;
  final String PlaylistCoverIMGPath;
  final String songsCountInPlaylist;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              height: 212,
              width: 196,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(PlaylistCoverIMGPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  PlaylistName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                Text('$songsCountInPlaylist Songs',style: TextStyle(
                      color: Color(0xFFD594EE),
                      fontWeight: FontWeight.w500,
                      fontSize: 15),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
