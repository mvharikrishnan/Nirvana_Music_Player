import 'package:flutter/material.dart';

class ProfileSceenPlaylistTile extends StatelessWidget {
  const ProfileSceenPlaylistTile({
    Key? key,
    required this.PlaylistCoverImage,
    required this.PlaylistTitie,
  }) : super(key: key);
  final String PlaylistCoverImage;
  final String PlaylistTitie;
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
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PlaylistCoverImage),
                  fit: BoxFit.cover,
                ),
                //borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  PlaylistTitie,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
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
