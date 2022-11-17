// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'play_list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayListScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String PlaylistName) currentSongsList,
    required TResult Function() playlistNames,
    required TResult Function(String newPlayListName, String oldPlayListName)
        renamePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
    TResult? Function()? playlistNames,
    TResult? Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
    TResult Function()? playlistNames,
    TResult Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongsList value) currentSongsList,
    required TResult Function(PlaylistNames value) playlistNames,
    required TResult Function(RenamePlaylist value) renamePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
    TResult? Function(PlaylistNames value)? playlistNames,
    TResult? Function(RenamePlaylist value)? renamePlaylist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
    TResult Function(PlaylistNames value)? playlistNames,
    TResult Function(RenamePlaylist value)? renamePlaylist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListScreenEventCopyWith<$Res> {
  factory $PlayListScreenEventCopyWith(
          PlayListScreenEvent value, $Res Function(PlayListScreenEvent) then) =
      _$PlayListScreenEventCopyWithImpl<$Res, PlayListScreenEvent>;
}

/// @nodoc
class _$PlayListScreenEventCopyWithImpl<$Res, $Val extends PlayListScreenEvent>
    implements $PlayListScreenEventCopyWith<$Res> {
  _$PlayListScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentSongsListCopyWith<$Res> {
  factory _$$CurrentSongsListCopyWith(
          _$CurrentSongsList value, $Res Function(_$CurrentSongsList) then) =
      __$$CurrentSongsListCopyWithImpl<$Res>;
  @useResult
  $Res call({String PlaylistName});
}

/// @nodoc
class __$$CurrentSongsListCopyWithImpl<$Res>
    extends _$PlayListScreenEventCopyWithImpl<$Res, _$CurrentSongsList>
    implements _$$CurrentSongsListCopyWith<$Res> {
  __$$CurrentSongsListCopyWithImpl(
      _$CurrentSongsList _value, $Res Function(_$CurrentSongsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlaylistName = null,
  }) {
    return _then(_$CurrentSongsList(
      PlaylistName: null == PlaylistName
          ? _value.PlaylistName
          : PlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrentSongsList
    with DiagnosticableTreeMixin
    implements CurrentSongsList {
  const _$CurrentSongsList({required this.PlaylistName});

  @override
  final String PlaylistName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListScreenEvent.currentSongsList(PlaylistName: $PlaylistName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListScreenEvent.currentSongsList'))
      ..add(DiagnosticsProperty('PlaylistName', PlaylistName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSongsList &&
            (identical(other.PlaylistName, PlaylistName) ||
                other.PlaylistName == PlaylistName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, PlaylistName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSongsListCopyWith<_$CurrentSongsList> get copyWith =>
      __$$CurrentSongsListCopyWithImpl<_$CurrentSongsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String PlaylistName) currentSongsList,
    required TResult Function() playlistNames,
    required TResult Function(String newPlayListName, String oldPlayListName)
        renamePlaylist,
  }) {
    return currentSongsList(PlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
    TResult? Function()? playlistNames,
    TResult? Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
  }) {
    return currentSongsList?.call(PlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
    TResult Function()? playlistNames,
    TResult Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
    required TResult orElse(),
  }) {
    if (currentSongsList != null) {
      return currentSongsList(PlaylistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongsList value) currentSongsList,
    required TResult Function(PlaylistNames value) playlistNames,
    required TResult Function(RenamePlaylist value) renamePlaylist,
  }) {
    return currentSongsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
    TResult? Function(PlaylistNames value)? playlistNames,
    TResult? Function(RenamePlaylist value)? renamePlaylist,
  }) {
    return currentSongsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
    TResult Function(PlaylistNames value)? playlistNames,
    TResult Function(RenamePlaylist value)? renamePlaylist,
    required TResult orElse(),
  }) {
    if (currentSongsList != null) {
      return currentSongsList(this);
    }
    return orElse();
  }
}

abstract class CurrentSongsList implements PlayListScreenEvent {
  const factory CurrentSongsList({required final String PlaylistName}) =
      _$CurrentSongsList;

  String get PlaylistName;
  @JsonKey(ignore: true)
  _$$CurrentSongsListCopyWith<_$CurrentSongsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaylistNamesCopyWith<$Res> {
  factory _$$PlaylistNamesCopyWith(
          _$PlaylistNames value, $Res Function(_$PlaylistNames) then) =
      __$$PlaylistNamesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaylistNamesCopyWithImpl<$Res>
    extends _$PlayListScreenEventCopyWithImpl<$Res, _$PlaylistNames>
    implements _$$PlaylistNamesCopyWith<$Res> {
  __$$PlaylistNamesCopyWithImpl(
      _$PlaylistNames _value, $Res Function(_$PlaylistNames) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaylistNames with DiagnosticableTreeMixin implements PlaylistNames {
  const _$PlaylistNames();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListScreenEvent.playlistNames()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PlayListScreenEvent.playlistNames'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaylistNames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String PlaylistName) currentSongsList,
    required TResult Function() playlistNames,
    required TResult Function(String newPlayListName, String oldPlayListName)
        renamePlaylist,
  }) {
    return playlistNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
    TResult? Function()? playlistNames,
    TResult? Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
  }) {
    return playlistNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
    TResult Function()? playlistNames,
    TResult Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
    required TResult orElse(),
  }) {
    if (playlistNames != null) {
      return playlistNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongsList value) currentSongsList,
    required TResult Function(PlaylistNames value) playlistNames,
    required TResult Function(RenamePlaylist value) renamePlaylist,
  }) {
    return playlistNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
    TResult? Function(PlaylistNames value)? playlistNames,
    TResult? Function(RenamePlaylist value)? renamePlaylist,
  }) {
    return playlistNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
    TResult Function(PlaylistNames value)? playlistNames,
    TResult Function(RenamePlaylist value)? renamePlaylist,
    required TResult orElse(),
  }) {
    if (playlistNames != null) {
      return playlistNames(this);
    }
    return orElse();
  }
}

abstract class PlaylistNames implements PlayListScreenEvent {
  const factory PlaylistNames() = _$PlaylistNames;
}

/// @nodoc
abstract class _$$RenamePlaylistCopyWith<$Res> {
  factory _$$RenamePlaylistCopyWith(
          _$RenamePlaylist value, $Res Function(_$RenamePlaylist) then) =
      __$$RenamePlaylistCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPlayListName, String oldPlayListName});
}

/// @nodoc
class __$$RenamePlaylistCopyWithImpl<$Res>
    extends _$PlayListScreenEventCopyWithImpl<$Res, _$RenamePlaylist>
    implements _$$RenamePlaylistCopyWith<$Res> {
  __$$RenamePlaylistCopyWithImpl(
      _$RenamePlaylist _value, $Res Function(_$RenamePlaylist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPlayListName = null,
    Object? oldPlayListName = null,
  }) {
    return _then(_$RenamePlaylist(
      newPlayListName: null == newPlayListName
          ? _value.newPlayListName
          : newPlayListName // ignore: cast_nullable_to_non_nullable
              as String,
      oldPlayListName: null == oldPlayListName
          ? _value.oldPlayListName
          : oldPlayListName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RenamePlaylist with DiagnosticableTreeMixin implements RenamePlaylist {
  const _$RenamePlaylist(
      {required this.newPlayListName, required this.oldPlayListName});

  @override
  final String newPlayListName;
  @override
  final String oldPlayListName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListScreenEvent.renamePlaylist(newPlayListName: $newPlayListName, oldPlayListName: $oldPlayListName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListScreenEvent.renamePlaylist'))
      ..add(DiagnosticsProperty('newPlayListName', newPlayListName))
      ..add(DiagnosticsProperty('oldPlayListName', oldPlayListName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenamePlaylist &&
            (identical(other.newPlayListName, newPlayListName) ||
                other.newPlayListName == newPlayListName) &&
            (identical(other.oldPlayListName, oldPlayListName) ||
                other.oldPlayListName == oldPlayListName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, newPlayListName, oldPlayListName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      __$$RenamePlaylistCopyWithImpl<_$RenamePlaylist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String PlaylistName) currentSongsList,
    required TResult Function() playlistNames,
    required TResult Function(String newPlayListName, String oldPlayListName)
        renamePlaylist,
  }) {
    return renamePlaylist(newPlayListName, oldPlayListName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
    TResult? Function()? playlistNames,
    TResult? Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
  }) {
    return renamePlaylist?.call(newPlayListName, oldPlayListName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
    TResult Function()? playlistNames,
    TResult Function(String newPlayListName, String oldPlayListName)?
        renamePlaylist,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(newPlayListName, oldPlayListName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongsList value) currentSongsList,
    required TResult Function(PlaylistNames value) playlistNames,
    required TResult Function(RenamePlaylist value) renamePlaylist,
  }) {
    return renamePlaylist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
    TResult? Function(PlaylistNames value)? playlistNames,
    TResult? Function(RenamePlaylist value)? renamePlaylist,
  }) {
    return renamePlaylist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
    TResult Function(PlaylistNames value)? playlistNames,
    TResult Function(RenamePlaylist value)? renamePlaylist,
    required TResult orElse(),
  }) {
    if (renamePlaylist != null) {
      return renamePlaylist(this);
    }
    return orElse();
  }
}

abstract class RenamePlaylist implements PlayListScreenEvent {
  const factory RenamePlaylist(
      {required final String newPlayListName,
      required final String oldPlayListName}) = _$RenamePlaylist;

  String get newPlayListName;
  String get oldPlayListName;
  @JsonKey(ignore: true)
  _$$RenamePlaylistCopyWith<_$RenamePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayListScreenState {
  String get PlayListName => throw _privateConstructorUsedError;
  List<Songs> get playlistSongsList => throw _privateConstructorUsedError;
  List<dynamic> get PlaylistNames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayListScreenStateCopyWith<PlayListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListScreenStateCopyWith<$Res> {
  factory $PlayListScreenStateCopyWith(
          PlayListScreenState value, $Res Function(PlayListScreenState) then) =
      _$PlayListScreenStateCopyWithImpl<$Res, PlayListScreenState>;
  @useResult
  $Res call(
      {String PlayListName,
      List<Songs> playlistSongsList,
      List<dynamic> PlaylistNames});
}

/// @nodoc
class _$PlayListScreenStateCopyWithImpl<$Res, $Val extends PlayListScreenState>
    implements $PlayListScreenStateCopyWith<$Res> {
  _$PlayListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlayListName = null,
    Object? playlistSongsList = null,
    Object? PlaylistNames = null,
  }) {
    return _then(_value.copyWith(
      PlayListName: null == PlayListName
          ? _value.PlayListName
          : PlayListName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongsList: null == playlistSongsList
          ? _value.playlistSongsList
          : playlistSongsList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      PlaylistNames: null == PlaylistNames
          ? _value.PlaylistNames
          : PlaylistNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayListScreenStateCopyWith<$Res>
    implements $PlayListScreenStateCopyWith<$Res> {
  factory _$$_PlayListScreenStateCopyWith(_$_PlayListScreenState value,
          $Res Function(_$_PlayListScreenState) then) =
      __$$_PlayListScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String PlayListName,
      List<Songs> playlistSongsList,
      List<dynamic> PlaylistNames});
}

/// @nodoc
class __$$_PlayListScreenStateCopyWithImpl<$Res>
    extends _$PlayListScreenStateCopyWithImpl<$Res, _$_PlayListScreenState>
    implements _$$_PlayListScreenStateCopyWith<$Res> {
  __$$_PlayListScreenStateCopyWithImpl(_$_PlayListScreenState _value,
      $Res Function(_$_PlayListScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlayListName = null,
    Object? playlistSongsList = null,
    Object? PlaylistNames = null,
  }) {
    return _then(_$_PlayListScreenState(
      PlayListName: null == PlayListName
          ? _value.PlayListName
          : PlayListName // ignore: cast_nullable_to_non_nullable
              as String,
      playlistSongsList: null == playlistSongsList
          ? _value._playlistSongsList
          : playlistSongsList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
      PlaylistNames: null == PlaylistNames
          ? _value._PlaylistNames
          : PlaylistNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_PlayListScreenState
    with DiagnosticableTreeMixin
    implements _PlayListScreenState {
  const _$_PlayListScreenState(
      {required this.PlayListName,
      required final List<Songs> playlistSongsList,
      required final List<dynamic> PlaylistNames})
      : _playlistSongsList = playlistSongsList,
        _PlaylistNames = PlaylistNames;

  @override
  final String PlayListName;
  final List<Songs> _playlistSongsList;
  @override
  List<Songs> get playlistSongsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistSongsList);
  }

  final List<dynamic> _PlaylistNames;
  @override
  List<dynamic> get PlaylistNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_PlaylistNames);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListScreenState(PlayListName: $PlayListName, playlistSongsList: $playlistSongsList, PlaylistNames: $PlaylistNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListScreenState'))
      ..add(DiagnosticsProperty('PlayListName', PlayListName))
      ..add(DiagnosticsProperty('playlistSongsList', playlistSongsList))
      ..add(DiagnosticsProperty('PlaylistNames', PlaylistNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayListScreenState &&
            (identical(other.PlayListName, PlayListName) ||
                other.PlayListName == PlayListName) &&
            const DeepCollectionEquality()
                .equals(other._playlistSongsList, _playlistSongsList) &&
            const DeepCollectionEquality()
                .equals(other._PlaylistNames, _PlaylistNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      PlayListName,
      const DeepCollectionEquality().hash(_playlistSongsList),
      const DeepCollectionEquality().hash(_PlaylistNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayListScreenStateCopyWith<_$_PlayListScreenState> get copyWith =>
      __$$_PlayListScreenStateCopyWithImpl<_$_PlayListScreenState>(
          this, _$identity);
}

abstract class _PlayListScreenState implements PlayListScreenState {
  const factory _PlayListScreenState(
      {required final String PlayListName,
      required final List<Songs> playlistSongsList,
      required final List<dynamic> PlaylistNames}) = _$_PlayListScreenState;

  @override
  String get PlayListName;
  @override
  List<Songs> get playlistSongsList;
  @override
  List<dynamic> get PlaylistNames;
  @override
  @JsonKey(ignore: true)
  _$$_PlayListScreenStateCopyWith<_$_PlayListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
