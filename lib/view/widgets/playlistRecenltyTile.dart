import 'package:flutter/material.dart';

class PlaylistRecentlyTile extends StatelessWidget {
  const PlaylistRecentlyTile({
    Key? key,
    required this.SongTitle,
    required this.SongDetails,
    required this.SongCoverImage,
    required this.StartTimer,
    required this.EndTimer,
  }) : super(key: key);
  final String SongCoverImage;
  final String SongTitle;
  final String SongDetails;
  final String StartTimer;
  final String EndTimer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 9,
      ),
      height: 60,
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
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(SongCoverImage),
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
                    Text(
                      SongTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      SongDetails,
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
    );
  }
}
