// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/widgets/searching.dart';
import 'package:nirvana/widgets/textFormField.dart';

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
            SearchIcon: Icons.search_rounded,
            textController: textEditingController,
            validator: (value) {
              final keys = getPlaylistBox().keys.toList();
              if (value == null || value.isEmpty) {
                return 'Please enter Playlist Name';
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

                  if (formKey.currentState!.validate()) {
                    await createNewPlaylist();
                    Navigator.pop(context);
                  }
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

PlaylistDeleteFuntion(
    {required BuildContext context, required String Playlistname}) {
  //
  Box<List> playlistBox = getPlaylistBox();

  //
  Future<void> deletePlaylist({required String PlaylistName}) async {
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

PlaylistEditFunction(
    {required BuildContext context,
    required List<Songs> songs,
    required String playlistName}) {
  TextEditingController editcontroller = TextEditingController();
  Box<List> playlistBox = getPlaylistBox();
  Future editPlaylist(
      {required String playlistName,
      required List<Songs> playlistSongList,
      required String oldPlaylistName}) async {
    playlistBox.put(playlistName, playlistSongList);
    playlistBox.delete(oldPlaylistName);
    Navigator.pop(context);
  }

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Edit Playlist'),
        content: TextFormField(
          controller: editcontroller,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: playlistName,
            prefixIcon: Icon(
              Icons.edit,
              size: 25,
            ),
          ),
        ),
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
              editPlaylist(
                  playlistName: editcontroller.text.trim(),
                  playlistSongList: songs,
                  oldPlaylistName: playlistName);
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
