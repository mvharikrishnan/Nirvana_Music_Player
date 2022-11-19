// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'now_playling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NowPlaylingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsAudioPlayer audioPlayer) onlooping,
    required TResult Function(AssetsAudioPlayer audioPlayer) isSound,
    required TResult Function(String ID) isFavorite,
    required TResult Function() initialising,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult? Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult? Function(String ID)? isFavorite,
    TResult? Function()? initialising,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult Function(String ID)? isFavorite,
    TResult Function()? initialising,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onlooping value) onlooping,
    required TResult Function(IsSound value) isSound,
    required TResult Function(IsFavorite value) isFavorite,
    required TResult Function(Initialising value) initialising,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Onlooping value)? onlooping,
    TResult? Function(IsSound value)? isSound,
    TResult? Function(IsFavorite value)? isFavorite,
    TResult? Function(Initialising value)? initialising,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onlooping value)? onlooping,
    TResult Function(IsSound value)? isSound,
    TResult Function(IsFavorite value)? isFavorite,
    TResult Function(Initialising value)? initialising,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlaylingEventCopyWith<$Res> {
  factory $NowPlaylingEventCopyWith(
          NowPlaylingEvent value, $Res Function(NowPlaylingEvent) then) =
      _$NowPlaylingEventCopyWithImpl<$Res, NowPlaylingEvent>;
}

/// @nodoc
class _$NowPlaylingEventCopyWithImpl<$Res, $Val extends NowPlaylingEvent>
    implements $NowPlaylingEventCopyWith<$Res> {
  _$NowPlaylingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnloopingCopyWith<$Res> {
  factory _$$OnloopingCopyWith(
          _$Onlooping value, $Res Function(_$Onlooping) then) =
      __$$OnloopingCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetsAudioPlayer audioPlayer});
}

/// @nodoc
class __$$OnloopingCopyWithImpl<$Res>
    extends _$NowPlaylingEventCopyWithImpl<$Res, _$Onlooping>
    implements _$$OnloopingCopyWith<$Res> {
  __$$OnloopingCopyWithImpl(
      _$Onlooping _value, $Res Function(_$Onlooping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPlayer = null,
  }) {
    return _then(_$Onlooping(
      audioPlayer: null == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AssetsAudioPlayer,
    ));
  }
}

/// @nodoc

class _$Onlooping implements Onlooping {
  const _$Onlooping({required this.audioPlayer});

  @override
  final AssetsAudioPlayer audioPlayer;

  @override
  String toString() {
    return 'NowPlaylingEvent.onlooping(audioPlayer: $audioPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Onlooping &&
            (identical(other.audioPlayer, audioPlayer) ||
                other.audioPlayer == audioPlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnloopingCopyWith<_$Onlooping> get copyWith =>
      __$$OnloopingCopyWithImpl<_$Onlooping>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsAudioPlayer audioPlayer) onlooping,
    required TResult Function(AssetsAudioPlayer audioPlayer) isSound,
    required TResult Function(String ID) isFavorite,
    required TResult Function() initialising,
  }) {
    return onlooping(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult? Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult? Function(String ID)? isFavorite,
    TResult? Function()? initialising,
  }) {
    return onlooping?.call(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult Function(String ID)? isFavorite,
    TResult Function()? initialising,
    required TResult orElse(),
  }) {
    if (onlooping != null) {
      return onlooping(audioPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onlooping value) onlooping,
    required TResult Function(IsSound value) isSound,
    required TResult Function(IsFavorite value) isFavorite,
    required TResult Function(Initialising value) initialising,
  }) {
    return onlooping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Onlooping value)? onlooping,
    TResult? Function(IsSound value)? isSound,
    TResult? Function(IsFavorite value)? isFavorite,
    TResult? Function(Initialising value)? initialising,
  }) {
    return onlooping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onlooping value)? onlooping,
    TResult Function(IsSound value)? isSound,
    TResult Function(IsFavorite value)? isFavorite,
    TResult Function(Initialising value)? initialising,
    required TResult orElse(),
  }) {
    if (onlooping != null) {
      return onlooping(this);
    }
    return orElse();
  }
}

abstract class Onlooping implements NowPlaylingEvent {
  const factory Onlooping({required final AssetsAudioPlayer audioPlayer}) =
      _$Onlooping;

  AssetsAudioPlayer get audioPlayer;
  @JsonKey(ignore: true)
  _$$OnloopingCopyWith<_$Onlooping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsSoundCopyWith<$Res> {
  factory _$$IsSoundCopyWith(_$IsSound value, $Res Function(_$IsSound) then) =
      __$$IsSoundCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetsAudioPlayer audioPlayer});
}

/// @nodoc
class __$$IsSoundCopyWithImpl<$Res>
    extends _$NowPlaylingEventCopyWithImpl<$Res, _$IsSound>
    implements _$$IsSoundCopyWith<$Res> {
  __$$IsSoundCopyWithImpl(_$IsSound _value, $Res Function(_$IsSound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPlayer = null,
  }) {
    return _then(_$IsSound(
      audioPlayer: null == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AssetsAudioPlayer,
    ));
  }
}

/// @nodoc

class _$IsSound implements IsSound {
  const _$IsSound({required this.audioPlayer});

  @override
  final AssetsAudioPlayer audioPlayer;

  @override
  String toString() {
    return 'NowPlaylingEvent.isSound(audioPlayer: $audioPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSound &&
            (identical(other.audioPlayer, audioPlayer) ||
                other.audioPlayer == audioPlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSoundCopyWith<_$IsSound> get copyWith =>
      __$$IsSoundCopyWithImpl<_$IsSound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsAudioPlayer audioPlayer) onlooping,
    required TResult Function(AssetsAudioPlayer audioPlayer) isSound,
    required TResult Function(String ID) isFavorite,
    required TResult Function() initialising,
  }) {
    return isSound(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult? Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult? Function(String ID)? isFavorite,
    TResult? Function()? initialising,
  }) {
    return isSound?.call(audioPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult Function(String ID)? isFavorite,
    TResult Function()? initialising,
    required TResult orElse(),
  }) {
    if (isSound != null) {
      return isSound(audioPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onlooping value) onlooping,
    required TResult Function(IsSound value) isSound,
    required TResult Function(IsFavorite value) isFavorite,
    required TResult Function(Initialising value) initialising,
  }) {
    return isSound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Onlooping value)? onlooping,
    TResult? Function(IsSound value)? isSound,
    TResult? Function(IsFavorite value)? isFavorite,
    TResult? Function(Initialising value)? initialising,
  }) {
    return isSound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onlooping value)? onlooping,
    TResult Function(IsSound value)? isSound,
    TResult Function(IsFavorite value)? isFavorite,
    TResult Function(Initialising value)? initialising,
    required TResult orElse(),
  }) {
    if (isSound != null) {
      return isSound(this);
    }
    return orElse();
  }
}

abstract class IsSound implements NowPlaylingEvent {
  const factory IsSound({required final AssetsAudioPlayer audioPlayer}) =
      _$IsSound;

  AssetsAudioPlayer get audioPlayer;
  @JsonKey(ignore: true)
  _$$IsSoundCopyWith<_$IsSound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsFavoriteCopyWith<$Res> {
  factory _$$IsFavoriteCopyWith(
          _$IsFavorite value, $Res Function(_$IsFavorite) then) =
      __$$IsFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({String ID});
}

/// @nodoc
class __$$IsFavoriteCopyWithImpl<$Res>
    extends _$NowPlaylingEventCopyWithImpl<$Res, _$IsFavorite>
    implements _$$IsFavoriteCopyWith<$Res> {
  __$$IsFavoriteCopyWithImpl(
      _$IsFavorite _value, $Res Function(_$IsFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
  }) {
    return _then(_$IsFavorite(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsFavorite implements IsFavorite {
  const _$IsFavorite({required this.ID});

  @override
  final String ID;

  @override
  String toString() {
    return 'NowPlaylingEvent.isFavorite(ID: $ID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsFavorite &&
            (identical(other.ID, ID) || other.ID == ID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsFavoriteCopyWith<_$IsFavorite> get copyWith =>
      __$$IsFavoriteCopyWithImpl<_$IsFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsAudioPlayer audioPlayer) onlooping,
    required TResult Function(AssetsAudioPlayer audioPlayer) isSound,
    required TResult Function(String ID) isFavorite,
    required TResult Function() initialising,
  }) {
    return isFavorite(ID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult? Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult? Function(String ID)? isFavorite,
    TResult? Function()? initialising,
  }) {
    return isFavorite?.call(ID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult Function(String ID)? isFavorite,
    TResult Function()? initialising,
    required TResult orElse(),
  }) {
    if (isFavorite != null) {
      return isFavorite(ID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onlooping value) onlooping,
    required TResult Function(IsSound value) isSound,
    required TResult Function(IsFavorite value) isFavorite,
    required TResult Function(Initialising value) initialising,
  }) {
    return isFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Onlooping value)? onlooping,
    TResult? Function(IsSound value)? isSound,
    TResult? Function(IsFavorite value)? isFavorite,
    TResult? Function(Initialising value)? initialising,
  }) {
    return isFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onlooping value)? onlooping,
    TResult Function(IsSound value)? isSound,
    TResult Function(IsFavorite value)? isFavorite,
    TResult Function(Initialising value)? initialising,
    required TResult orElse(),
  }) {
    if (isFavorite != null) {
      return isFavorite(this);
    }
    return orElse();
  }
}

abstract class IsFavorite implements NowPlaylingEvent {
  const factory IsFavorite({required final String ID}) = _$IsFavorite;

  String get ID;
  @JsonKey(ignore: true)
  _$$IsFavoriteCopyWith<_$IsFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialisingCopyWith<$Res> {
  factory _$$InitialisingCopyWith(
          _$Initialising value, $Res Function(_$Initialising) then) =
      __$$InitialisingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialisingCopyWithImpl<$Res>
    extends _$NowPlaylingEventCopyWithImpl<$Res, _$Initialising>
    implements _$$InitialisingCopyWith<$Res> {
  __$$InitialisingCopyWithImpl(
      _$Initialising _value, $Res Function(_$Initialising) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialising implements Initialising {
  const _$Initialising();

  @override
  String toString() {
    return 'NowPlaylingEvent.initialising()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialising);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetsAudioPlayer audioPlayer) onlooping,
    required TResult Function(AssetsAudioPlayer audioPlayer) isSound,
    required TResult Function(String ID) isFavorite,
    required TResult Function() initialising,
  }) {
    return initialising();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult? Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult? Function(String ID)? isFavorite,
    TResult? Function()? initialising,
  }) {
    return initialising?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetsAudioPlayer audioPlayer)? onlooping,
    TResult Function(AssetsAudioPlayer audioPlayer)? isSound,
    TResult Function(String ID)? isFavorite,
    TResult Function()? initialising,
    required TResult orElse(),
  }) {
    if (initialising != null) {
      return initialising();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onlooping value) onlooping,
    required TResult Function(IsSound value) isSound,
    required TResult Function(IsFavorite value) isFavorite,
    required TResult Function(Initialising value) initialising,
  }) {
    return initialising(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Onlooping value)? onlooping,
    TResult? Function(IsSound value)? isSound,
    TResult? Function(IsFavorite value)? isFavorite,
    TResult? Function(Initialising value)? initialising,
  }) {
    return initialising?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onlooping value)? onlooping,
    TResult Function(IsSound value)? isSound,
    TResult Function(IsFavorite value)? isFavorite,
    TResult Function(Initialising value)? initialising,
    required TResult orElse(),
  }) {
    if (initialising != null) {
      return initialising(this);
    }
    return orElse();
  }
}

abstract class Initialising implements NowPlaylingEvent {
  const factory Initialising() = _$Initialising;
}

/// @nodoc
mixin _$NowPlaylingState {
  bool get isLooping => throw _privateConstructorUsedError;
  bool get isSound => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  AssetsAudioPlayer? get audioPlayer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlaylingStateCopyWith<NowPlaylingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlaylingStateCopyWith<$Res> {
  factory $NowPlaylingStateCopyWith(
          NowPlaylingState value, $Res Function(NowPlaylingState) then) =
      _$NowPlaylingStateCopyWithImpl<$Res, NowPlaylingState>;
  @useResult
  $Res call(
      {bool isLooping,
      bool isSound,
      bool isPlaying,
      bool isFavorite,
      AssetsAudioPlayer? audioPlayer});
}

/// @nodoc
class _$NowPlaylingStateCopyWithImpl<$Res, $Val extends NowPlaylingState>
    implements $NowPlaylingStateCopyWith<$Res> {
  _$NowPlaylingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLooping = null,
    Object? isSound = null,
    Object? isPlaying = null,
    Object? isFavorite = null,
    Object? audioPlayer = freezed,
  }) {
    return _then(_value.copyWith(
      isLooping: null == isLooping
          ? _value.isLooping
          : isLooping // ignore: cast_nullable_to_non_nullable
              as bool,
      isSound: null == isSound
          ? _value.isSound
          : isSound // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      audioPlayer: freezed == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AssetsAudioPlayer?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NowPlaylingStateCopyWith<$Res>
    implements $NowPlaylingStateCopyWith<$Res> {
  factory _$$_NowPlaylingStateCopyWith(
          _$_NowPlaylingState value, $Res Function(_$_NowPlaylingState) then) =
      __$$_NowPlaylingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLooping,
      bool isSound,
      bool isPlaying,
      bool isFavorite,
      AssetsAudioPlayer? audioPlayer});
}

/// @nodoc
class __$$_NowPlaylingStateCopyWithImpl<$Res>
    extends _$NowPlaylingStateCopyWithImpl<$Res, _$_NowPlaylingState>
    implements _$$_NowPlaylingStateCopyWith<$Res> {
  __$$_NowPlaylingStateCopyWithImpl(
      _$_NowPlaylingState _value, $Res Function(_$_NowPlaylingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLooping = null,
    Object? isSound = null,
    Object? isPlaying = null,
    Object? isFavorite = null,
    Object? audioPlayer = freezed,
  }) {
    return _then(_$_NowPlaylingState(
      isLooping: null == isLooping
          ? _value.isLooping
          : isLooping // ignore: cast_nullable_to_non_nullable
              as bool,
      isSound: null == isSound
          ? _value.isSound
          : isSound // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      audioPlayer: freezed == audioPlayer
          ? _value.audioPlayer
          : audioPlayer // ignore: cast_nullable_to_non_nullable
              as AssetsAudioPlayer?,
    ));
  }
}

/// @nodoc

class _$_NowPlaylingState implements _NowPlaylingState {
  const _$_NowPlaylingState(
      {required this.isLooping,
      required this.isSound,
      required this.isPlaying,
      required this.isFavorite,
      this.audioPlayer});

  @override
  final bool isLooping;
  @override
  final bool isSound;
  @override
  final bool isPlaying;
  @override
  final bool isFavorite;
  @override
  final AssetsAudioPlayer? audioPlayer;

  @override
  String toString() {
    return 'NowPlaylingState(isLooping: $isLooping, isSound: $isSound, isPlaying: $isPlaying, isFavorite: $isFavorite, audioPlayer: $audioPlayer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowPlaylingState &&
            (identical(other.isLooping, isLooping) ||
                other.isLooping == isLooping) &&
            (identical(other.isSound, isSound) || other.isSound == isSound) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.audioPlayer, audioPlayer) ||
                other.audioPlayer == audioPlayer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLooping, isSound, isPlaying, isFavorite, audioPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NowPlaylingStateCopyWith<_$_NowPlaylingState> get copyWith =>
      __$$_NowPlaylingStateCopyWithImpl<_$_NowPlaylingState>(this, _$identity);
}

abstract class _NowPlaylingState implements NowPlaylingState {
  const factory _NowPlaylingState(
      {required final bool isLooping,
      required final bool isSound,
      required final bool isPlaying,
      required final bool isFavorite,
      final AssetsAudioPlayer? audioPlayer}) = _$_NowPlaylingState;

  @override
  bool get isLooping;
  @override
  bool get isSound;
  @override
  bool get isPlaying;
  @override
  bool get isFavorite;
  @override
  AssetsAudioPlayer? get audioPlayer;
  @override
  @JsonKey(ignore: true)
  _$$_NowPlaylingStateCopyWith<_$_NowPlaylingState> get copyWith =>
      throw _privateConstructorUsedError;
}
