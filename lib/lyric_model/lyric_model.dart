import 'package:json_annotation/json_annotation.dart';

part 'lyric_model.g.dart';

@JsonSerializable()
class LyricModel {
	String? name;
	String? lyrics;

	LyricModel({this.name, this.lyrics});

	factory LyricModel.fromJson(Map<String, dynamic> json) {
		return _$LyricModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LyricModelToJson(this);
}
