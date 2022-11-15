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
  String get PlaylistName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String PlaylistName) currentSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongsList value) currentSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayListScreenEventCopyWith<PlayListScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayListScreenEventCopyWith<$Res> {
  factory $PlayListScreenEventCopyWith(
          PlayListScreenEvent value, $Res Function(PlayListScreenEvent) then) =
      _$PlayListScreenEventCopyWithImpl<$Res, PlayListScreenEvent>;
  @useResult
  $Res call({String PlaylistName});
}

/// @nodoc
class _$PlayListScreenEventCopyWithImpl<$Res, $Val extends PlayListScreenEvent>
    implements $PlayListScreenEventCopyWith<$Res> {
  _$PlayListScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlaylistName = null,
  }) {
    return _then(_value.copyWith(
      PlaylistName: null == PlaylistName
          ? _value.PlaylistName
          : PlaylistName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentSongsListCopyWith<$Res>
    implements $PlayListScreenEventCopyWith<$Res> {
  factory _$$CurrentSongsListCopyWith(
          _$CurrentSongsList value, $Res Function(_$CurrentSongsList) then) =
      __$$CurrentSongsListCopyWithImpl<$Res>;
  @override
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
  }) {
    return currentSongsList(PlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String PlaylistName)? currentSongsList,
  }) {
    return currentSongsList?.call(PlaylistName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String PlaylistName)? currentSongsList,
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
  }) {
    return currentSongsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongsList value)? currentSongsList,
  }) {
    return currentSongsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongsList value)? currentSongsList,
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

  @override
  String get PlaylistName;
  @override
  @JsonKey(ignore: true)
  _$$CurrentSongsListCopyWith<_$CurrentSongsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayListScreenState {
  String get PlayListName => throw _privateConstructorUsedError;
  List<Songs> get playlistSongsList => throw _privateConstructorUsedError;

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
  $Res call({String PlayListName, List<Songs> playlistSongsList});
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
  $Res call({String PlayListName, List<Songs> playlistSongsList});
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
    ));
  }
}

/// @nodoc

class _$_PlayListScreenState
    with DiagnosticableTreeMixin
    implements _PlayListScreenState {
  const _$_PlayListScreenState(
      {required this.PlayListName,
      required final List<Songs> playlistSongsList})
      : _playlistSongsList = playlistSongsList;

  @override
  final String PlayListName;
  final List<Songs> _playlistSongsList;
  @override
  List<Songs> get playlistSongsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlistSongsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayListScreenState(PlayListName: $PlayListName, playlistSongsList: $playlistSongsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayListScreenState'))
      ..add(DiagnosticsProperty('PlayListName', PlayListName))
      ..add(DiagnosticsProperty('playlistSongsList', playlistSongsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayListScreenState &&
            (identical(other.PlayListName, PlayListName) ||
                other.PlayListName == PlayListName) &&
            const DeepCollectionEquality()
                .equals(other._playlistSongsList, _playlistSongsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, PlayListName,
      const DeepCollectionEquality().hash(_playlistSongsList));

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
      required final List<Songs> playlistSongsList}) = _$_PlayListScreenState;

  @override
  String get PlayListName;
  @override
  List<Songs> get playlistSongsList;
  @override
  @JsonKey(ignore: true)
  _$$_PlayListScreenStateCopyWith<_$_PlayListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
