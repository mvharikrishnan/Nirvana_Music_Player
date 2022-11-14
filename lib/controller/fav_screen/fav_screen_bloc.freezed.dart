// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fav_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavScreenEvent {
  List<Songs> get songList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Songs> songList) currentSongListInFAV,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Songs> songList)? currentSongListInFAV,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Songs> songList)? currentSongListInFAV,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongListInFAV value) currentSongListInFAV,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongListInFAV value)? currentSongListInFAV,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongListInFAV value)? currentSongListInFAV,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavScreenEventCopyWith<FavScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavScreenEventCopyWith<$Res> {
  factory $FavScreenEventCopyWith(
          FavScreenEvent value, $Res Function(FavScreenEvent) then) =
      _$FavScreenEventCopyWithImpl<$Res, FavScreenEvent>;
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class _$FavScreenEventCopyWithImpl<$Res, $Val extends FavScreenEvent>
    implements $FavScreenEventCopyWith<$Res> {
  _$FavScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_value.copyWith(
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentSongListInFAVCopyWith<$Res>
    implements $FavScreenEventCopyWith<$Res> {
  factory _$$CurrentSongListInFAVCopyWith(_$CurrentSongListInFAV value,
          $Res Function(_$CurrentSongListInFAV) then) =
      __$$CurrentSongListInFAVCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class __$$CurrentSongListInFAVCopyWithImpl<$Res>
    extends _$FavScreenEventCopyWithImpl<$Res, _$CurrentSongListInFAV>
    implements _$$CurrentSongListInFAVCopyWith<$Res> {
  __$$CurrentSongListInFAVCopyWithImpl(_$CurrentSongListInFAV _value,
      $Res Function(_$CurrentSongListInFAV) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_$CurrentSongListInFAV(
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$CurrentSongListInFAV implements CurrentSongListInFAV {
  const _$CurrentSongListInFAV({required final List<Songs> songList})
      : _songList = songList;

  final List<Songs> _songList;
  @override
  List<Songs> get songList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  String toString() {
    return 'FavScreenEvent.currentSongListInFAV(songList: $songList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSongListInFAV &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSongListInFAVCopyWith<_$CurrentSongListInFAV> get copyWith =>
      __$$CurrentSongListInFAVCopyWithImpl<_$CurrentSongListInFAV>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Songs> songList) currentSongListInFAV,
  }) {
    return currentSongListInFAV(songList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Songs> songList)? currentSongListInFAV,
  }) {
    return currentSongListInFAV?.call(songList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Songs> songList)? currentSongListInFAV,
    required TResult orElse(),
  }) {
    if (currentSongListInFAV != null) {
      return currentSongListInFAV(songList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentSongListInFAV value) currentSongListInFAV,
  }) {
    return currentSongListInFAV(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentSongListInFAV value)? currentSongListInFAV,
  }) {
    return currentSongListInFAV?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentSongListInFAV value)? currentSongListInFAV,
    required TResult orElse(),
  }) {
    if (currentSongListInFAV != null) {
      return currentSongListInFAV(this);
    }
    return orElse();
  }
}

abstract class CurrentSongListInFAV implements FavScreenEvent {
  const factory CurrentSongListInFAV({required final List<Songs> songList}) =
      _$CurrentSongListInFAV;

  @override
  List<Songs> get songList;
  @override
  @JsonKey(ignore: true)
  _$$CurrentSongListInFAVCopyWith<_$CurrentSongListInFAV> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavScreenState {
  List<Songs> get songList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavScreenStateCopyWith<FavScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavScreenStateCopyWith<$Res> {
  factory $FavScreenStateCopyWith(
          FavScreenState value, $Res Function(FavScreenState) then) =
      _$FavScreenStateCopyWithImpl<$Res, FavScreenState>;
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class _$FavScreenStateCopyWithImpl<$Res, $Val extends FavScreenState>
    implements $FavScreenStateCopyWith<$Res> {
  _$FavScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_value.copyWith(
      songList: null == songList
          ? _value.songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavScreenStateCopyWith<$Res>
    implements $FavScreenStateCopyWith<$Res> {
  factory _$$_FavScreenStateCopyWith(
          _$_FavScreenState value, $Res Function(_$_FavScreenState) then) =
      __$$_FavScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Songs> songList});
}

/// @nodoc
class __$$_FavScreenStateCopyWithImpl<$Res>
    extends _$FavScreenStateCopyWithImpl<$Res, _$_FavScreenState>
    implements _$$_FavScreenStateCopyWith<$Res> {
  __$$_FavScreenStateCopyWithImpl(
      _$_FavScreenState _value, $Res Function(_$_FavScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songList = null,
  }) {
    return _then(_$_FavScreenState(
      songList: null == songList
          ? _value._songList
          : songList // ignore: cast_nullable_to_non_nullable
              as List<Songs>,
    ));
  }
}

/// @nodoc

class _$_FavScreenState implements _FavScreenState {
  const _$_FavScreenState({required final List<Songs> songList})
      : _songList = songList;

  final List<Songs> _songList;
  @override
  List<Songs> get songList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songList);
  }

  @override
  String toString() {
    return 'FavScreenState(songList: $songList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavScreenState &&
            const DeepCollectionEquality().equals(other._songList, _songList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavScreenStateCopyWith<_$_FavScreenState> get copyWith =>
      __$$_FavScreenStateCopyWithImpl<_$_FavScreenState>(this, _$identity);
}

abstract class _FavScreenState implements FavScreenState {
  const factory _FavScreenState({required final List<Songs> songList}) =
      _$_FavScreenState;

  @override
  List<Songs> get songList;
  @override
  @JsonKey(ignore: true)
  _$$_FavScreenStateCopyWith<_$_FavScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
