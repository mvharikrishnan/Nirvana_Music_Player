// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/widgets/searching.dart';

playlistCreateAlertBox({required BuildContext context}) {
  TextEditingController textEditingController = TextEditingController();
  Box<List> playlistBox = getPlaylistBox();
  Future<void> createNewPlaylist() async {
    List<Songs> songList = [];
    final String playlistName = textEditingController.text.trim();
    if (playlistName.isEmpty) {
      return;
    } else {
      await playlistBox.put(playlistName, songList);
    }
  }

  return showDialog(
    context: context,
    builder: (context) {
      final formKey = GlobalKey<FormState>();
      return Form(
        key: formKey,
        child: AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(
            'Create new playlist',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          content: textFieldForSearchAndCreatePlaylist(
            HintText: 'Playlist Name',
            SearchIcon: Icons.search_off_outlined,
            textController: textEditingController,
            validator: (value) {
              final keys = getPlaylistBox().keys.toList();
              if (value == null || value.isEmpty) {
                return 'Please enter ';
              }
              if (keys.contains(value)) {
                return '$value already exits';
              }
              return null;
            },
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel', style: TextStyle(color: Colors.red))),
            TextButton(
                onPressed: () async {
                  //function for creating playlist
                  await createNewPlaylist();
                  Navigator.pop(context);
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(color: Colors.green),
                )),
          ],
        ),
      );
    },
  );
}

PlaylistDeleteFuntion({required BuildContext context,required String Playlistname}) {

  //
  Box<List> playlistBox = getPlaylistBox();

  //
  Future<void> deletePlaylist({required String PlaylistName})async{
    playlistBox.delete(PlaylistName);
     Navigator.pop(context);
  }
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Do you want to delete the playlist?'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //function to delete playlist
              deletePlaylist(PlaylistName: Playlistname);
            },
            child: Text('Confirm'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
          ),
        ],
      );
    },
  );
}
