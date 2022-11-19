// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_to_playlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddToPlaylistEvent {
  List<dynamic> get NewPlaylistLists => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> NewPlaylistLists) playlistSearch,
    required TResult Function(List<dynamic> NewPlaylistLists)
        initiailPlaylistNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult? Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistSearch value) playlistSearch,
    required TResult Function(InitiailPlaylistNames value)
        initiailPlaylistNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistSearch value)? playlistSearch,
    TResult? Function(InitiailPlaylistNames value)? initiailPlaylistNames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistSearch value)? playlistSearch,
    TResult Function(InitiailPlaylistNames value)? initiailPlaylistNames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToPlaylistEventCopyWith<AddToPlaylistEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToPlaylistEventCopyWith<$Res> {
  factory $AddToPlaylistEventCopyWith(
          AddToPlaylistEvent value, $Res Function(AddToPlaylistEvent) then) =
      _$AddToPlaylistEventCopyWithImpl<$Res, AddToPlaylistEvent>;
  @useResult
  $Res call({List<dynamic> NewPlaylistLists});
}

/// @nodoc
class _$AddToPlaylistEventCopyWithImpl<$Res, $Val extends AddToPlaylistEvent>
    implements $AddToPlaylistEventCopyWith<$Res> {
  _$AddToPlaylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? NewPlaylistLists = null,
  }) {
    return _then(_value.copyWith(
      NewPlaylistLists: null == NewPlaylistLists
          ? _value.NewPlaylistLists
          : NewPlaylistLists // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistSearchCopyWith<$Res>
    implements $AddToPlaylistEventCopyWith<$Res> {
  factory _$$PlaylistSearchCopyWith(
          _$PlaylistSearch value, $Res Function(_$PlaylistSearch) then) =
      __$$PlaylistSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> NewPlaylistLists});
}

/// @nodoc
class __$$PlaylistSearchCopyWithImpl<$Res>
    extends _$AddToPlaylistEventCopyWithImpl<$Res, _$PlaylistSearch>
    implements _$$PlaylistSearchCopyWith<$Res> {
  __$$PlaylistSearchCopyWithImpl(
      _$PlaylistSearch _value, $Res Function(_$PlaylistSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? NewPlaylistLists = null,
  }) {
    return _then(_$PlaylistSearch(
      NewPlaylistLists: null == NewPlaylistLists
          ? _value._NewPlaylistLists
          : NewPlaylistLists // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PlaylistSearch with DiagnosticableTreeMixin implements PlaylistSearch {
  const _$PlaylistSearch({required final List<dynamic> NewPlaylistLists})
      : _NewPlaylistLists = NewPlaylistLists;

  final List<dynamic> _NewPlaylistLists;
  @override
  List<dynamic> get NewPlaylistLists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_NewPlaylistLists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddToPlaylistEvent.playlistSearch(NewPlaylistLists: $NewPlaylistLists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddToPlaylistEvent.playlistSearch'))
      ..add(DiagnosticsProperty('NewPlaylistLists', NewPlaylistLists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistSearch &&
            const DeepCollectionEquality()
                .equals(other._NewPlaylistLists, _NewPlaylistLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_NewPlaylistLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistSearchCopyWith<_$PlaylistSearch> get copyWith =>
      __$$PlaylistSearchCopyWithImpl<_$PlaylistSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> NewPlaylistLists) playlistSearch,
    required TResult Function(List<dynamic> NewPlaylistLists)
        initiailPlaylistNames,
  }) {
    return playlistSearch(NewPlaylistLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult? Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
  }) {
    return playlistSearch?.call(NewPlaylistLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
    required TResult orElse(),
  }) {
    if (playlistSearch != null) {
      return playlistSearch(NewPlaylistLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistSearch value) playlistSearch,
    required TResult Function(InitiailPlaylistNames value)
        initiailPlaylistNames,
  }) {
    return playlistSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistSearch value)? playlistSearch,
    TResult? Function(InitiailPlaylistNames value)? initiailPlaylistNames,
  }) {
    return playlistSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistSearch value)? playlistSearch,
    TResult Function(InitiailPlaylistNames value)? initiailPlaylistNames,
    required TResult orElse(),
  }) {
    if (playlistSearch != null) {
      return playlistSearch(this);
    }
    return orElse();
  }
}

abstract class PlaylistSearch implements AddToPlaylistEvent {
  const factory PlaylistSearch(
      {required final List<dynamic> NewPlaylistLists}) = _$PlaylistSearch;

  @override
  List<dynamic> get NewPlaylistLists;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistSearchCopyWith<_$PlaylistSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitiailPlaylistNamesCopyWith<$Res>
    implements $AddToPlaylistEventCopyWith<$Res> {
  factory _$$InitiailPlaylistNamesCopyWith(_$InitiailPlaylistNames value,
          $Res Function(_$InitiailPlaylistNames) then) =
      __$$InitiailPlaylistNamesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> NewPlaylistLists});
}

/// @nodoc
class __$$InitiailPlaylistNamesCopyWithImpl<$Res>
    extends _$AddToPlaylistEventCopyWithImpl<$Res, _$InitiailPlaylistNames>
    implements _$$InitiailPlaylistNamesCopyWith<$Res> {
  __$$InitiailPlaylistNamesCopyWithImpl(_$InitiailPlaylistNames _value,
      $Res Function(_$InitiailPlaylistNames) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? NewPlaylistLists = null,
  }) {
    return _then(_$InitiailPlaylistNames(
      NewPlaylistLists: null == NewPlaylistLists
          ? _value._NewPlaylistLists
          : NewPlaylistLists // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$InitiailPlaylistNames
    with DiagnosticableTreeMixin
    implements InitiailPlaylistNames {
  const _$InitiailPlaylistNames({required final List<dynamic> NewPlaylistLists})
      : _NewPlaylistLists = NewPlaylistLists;

  final List<dynamic> _NewPlaylistLists;
  @override
  List<dynamic> get NewPlaylistLists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_NewPlaylistLists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddToPlaylistEvent.initiailPlaylistNames(NewPlaylistLists: $NewPlaylistLists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AddToPlaylistEvent.initiailPlaylistNames'))
      ..add(DiagnosticsProperty('NewPlaylistLists', NewPlaylistLists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiailPlaylistNames &&
            const DeepCollectionEquality()
                .equals(other._NewPlaylistLists, _NewPlaylistLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_NewPlaylistLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiailPlaylistNamesCopyWith<_$InitiailPlaylistNames> get copyWith =>
      __$$InitiailPlaylistNamesCopyWithImpl<_$InitiailPlaylistNames>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> NewPlaylistLists) playlistSearch,
    required TResult Function(List<dynamic> NewPlaylistLists)
        initiailPlaylistNames,
  }) {
    return initiailPlaylistNames(NewPlaylistLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult? Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
  }) {
    return initiailPlaylistNames?.call(NewPlaylistLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> NewPlaylistLists)? playlistSearch,
    TResult Function(List<dynamic> NewPlaylistLists)? initiailPlaylistNames,
    required TResult orElse(),
  }) {
    if (initiailPlaylistNames != null) {
      return initiailPlaylistNames(NewPlaylistLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaylistSearch value) playlistSearch,
    required TResult Function(InitiailPlaylistNames value)
        initiailPlaylistNames,
  }) {
    return initiailPlaylistNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaylistSearch value)? playlistSearch,
    TResult? Function(InitiailPlaylistNames value)? initiailPlaylistNames,
  }) {
    return initiailPlaylistNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaylistSearch value)? playlistSearch,
    TResult Function(InitiailPlaylistNames value)? initiailPlaylistNames,
    required TResult orElse(),
  }) {
    if (initiailPlaylistNames != null) {
      return initiailPlaylistNames(this);
    }
    return orElse();
  }
}

abstract class InitiailPlaylistNames implements AddToPlaylistEvent {
  const factory InitiailPlaylistNames(
          {required final List<dynamic> NewPlaylistLists}) =
      _$InitiailPlaylistNames;

  @override
  List<dynamic> get NewPlaylistLists;
  @override
  @JsonKey(ignore: true)
  _$$InitiailPlaylistNamesCopyWith<_$InitiailPlaylistNames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddToPlaylistState {
  List<dynamic> get PlaylistNames => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToPlaylistStateCopyWith<AddToPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToPlaylistStateCopyWith<$Res> {
  factory $AddToPlaylistStateCopyWith(
          AddToPlaylistState value, $Res Function(AddToPlaylistState) then) =
      _$AddToPlaylistStateCopyWithImpl<$Res, AddToPlaylistState>;
  @useResult
  $Res call({List<dynamic> PlaylistNames});
}

/// @nodoc
class _$AddToPlaylistStateCopyWithImpl<$Res, $Val extends AddToPlaylistState>
    implements $AddToPlaylistStateCopyWith<$Res> {
  _$AddToPlaylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlaylistNames = null,
  }) {
    return _then(_value.copyWith(
      PlaylistNames: null == PlaylistNames
          ? _value.PlaylistNames
          : PlaylistNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddToPlaylistStateCopyWith<$Res>
    implements $AddToPlaylistStateCopyWith<$Res> {
  factory _$$_AddToPlaylistStateCopyWith(_$_AddToPlaylistState value,
          $Res Function(_$_AddToPlaylistState) then) =
      __$$_AddToPlaylistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> PlaylistNames});
}

/// @nodoc
class __$$_AddToPlaylistStateCopyWithImpl<$Res>
    extends _$AddToPlaylistStateCopyWithImpl<$Res, _$_AddToPlaylistState>
    implements _$$_AddToPlaylistStateCopyWith<$Res> {
  __$$_AddToPlaylistStateCopyWithImpl(
      _$_AddToPlaylistState _value, $Res Function(_$_AddToPlaylistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PlaylistNames = null,
  }) {
    return _then(_$_AddToPlaylistState(
      PlaylistNames: null == PlaylistNames
          ? _value._PlaylistNames
          : PlaylistNames // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_AddToPlaylistState
    with DiagnosticableTreeMixin
    implements _AddToPlaylistState {
  const _$_AddToPlaylistState({required final List<dynamic> PlaylistNames})
      : _PlaylistNames = PlaylistNames;

  final List<dynamic> _PlaylistNames;
  @override
  List<dynamic> get PlaylistNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_PlaylistNames);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddToPlaylistState(PlaylistNames: $PlaylistNames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddToPlaylistState'))
      ..add(DiagnosticsProperty('PlaylistNames', PlaylistNames));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToPlaylistState &&
            const DeepCollectionEquality()
                .equals(other._PlaylistNames, _PlaylistNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_PlaylistNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToPlaylistStateCopyWith<_$_AddToPlaylistState> get copyWith =>
      __$$_AddToPlaylistStateCopyWithImpl<_$_AddToPlaylistState>(
          this, _$identity);
}

abstract class _AddToPlaylistState implements AddToPlaylistState {
  const factory _AddToPlaylistState(
      {required final List<dynamic> PlaylistNames}) = _$_AddToPlaylistState;

  @override
  List<dynamic> get PlaylistNames;
  @override
  @JsonKey(ignore: true)
  _$$_AddToPlaylistStateCopyWith<_$_AddToPlaylistState> get copyWith =>
      throw _privateConstructorUsedError;
}
