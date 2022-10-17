import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:nirvana/lyric_model/lyric_model.dart';

Future<LyricModel> getLyrics(
    {required String name, required String artist}) async {
  log('Function Called');
  var URI = Uri.parse('https://lyrics-plus.p.rapidapi.com/lyrics/$name/$artist');
 
  log('URI Fecthed');
  log(URI.toString());

  final response = await http.get(URI, headers: {
    'X-RapidAPI-Key': '5d44647df4msh3582e5d92c23e5ap13e29ejsn84cddc7b0350',
    'X-RapidAPI-Host': 'lyrics-plus.p.rapidapi.com'
  });
  log('Response Taken');
  final jsonDecoded = jsonDecode(response.body) as Map<String, dynamic>;
  final result = LyricModel.fromJson(jsonDecoded);
  log('Result returning After this');
  return result;
}
