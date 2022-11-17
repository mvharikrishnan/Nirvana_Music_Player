// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileScreenEvent {
  String get userNameSP => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameSP) getUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userNameSP)? getUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameSP)? getUserName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserName value) getUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserName value)? getUserName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserName value)? getUserName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileScreenEventCopyWith<ProfileScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenEventCopyWith<$Res> {
  factory $ProfileScreenEventCopyWith(
          ProfileScreenEvent value, $Res Function(ProfileScreenEvent) then) =
      _$ProfileScreenEventCopyWithImpl<$Res, ProfileScreenEvent>;
  @useResult
  $Res call({String userNameSP});
}

/// @nodoc
class _$ProfileScreenEventCopyWithImpl<$Res, $Val extends ProfileScreenEvent>
    implements $ProfileScreenEventCopyWith<$Res> {
  _$ProfileScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameSP = null,
  }) {
    return _then(_value.copyWith(
      userNameSP: null == userNameSP
          ? _value.userNameSP
          : userNameSP // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserNameCopyWith<$Res>
    implements $ProfileScreenEventCopyWith<$Res> {
  factory _$$GetUserNameCopyWith(
          _$GetUserName value, $Res Function(_$GetUserName) then) =
      __$$GetUserNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userNameSP});
}

/// @nodoc
class __$$GetUserNameCopyWithImpl<$Res>
    extends _$ProfileScreenEventCopyWithImpl<$Res, _$GetUserName>
    implements _$$GetUserNameCopyWith<$Res> {
  __$$GetUserNameCopyWithImpl(
      _$GetUserName _value, $Res Function(_$GetUserName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameSP = null,
  }) {
    return _then(_$GetUserName(
      userNameSP: null == userNameSP
          ? _value.userNameSP
          : userNameSP // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserName implements GetUserName {
  const _$GetUserName({required this.userNameSP});

  @override
  final String userNameSP;

  @override
  String toString() {
    return 'ProfileScreenEvent.getUserName(userNameSP: $userNameSP)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserName &&
            (identical(other.userNameSP, userNameSP) ||
                other.userNameSP == userNameSP));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userNameSP);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNameCopyWith<_$GetUserName> get copyWith =>
      __$$GetUserNameCopyWithImpl<_$GetUserName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameSP) getUserName,
  }) {
    return getUserName(userNameSP);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userNameSP)? getUserName,
  }) {
    return getUserName?.call(userNameSP);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameSP)? getUserName,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(userNameSP);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserName value) getUserName,
  }) {
    return getUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserName value)? getUserName,
  }) {
    return getUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserName value)? getUserName,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(this);
    }
    return orElse();
  }
}

abstract class GetUserName implements ProfileScreenEvent {
  const factory GetUserName({required final String userNameSP}) = _$GetUserName;

  @override
  String get userNameSP;
  @override
  @JsonKey(ignore: true)
  _$$GetUserNameCopyWith<_$GetUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileScreenState {
  String get ProfileUserName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileScreenStateCopyWith<ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res, ProfileScreenState>;
  @useResult
  $Res call({String ProfileUserName});
}

/// @nodoc
class _$ProfileScreenStateCopyWithImpl<$Res, $Val extends ProfileScreenState>
    implements $ProfileScreenStateCopyWith<$Res> {
  _$ProfileScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProfileUserName = null,
  }) {
    return _then(_value.copyWith(
      ProfileUserName: null == ProfileUserName
          ? _value.ProfileUserName
          : ProfileUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileScreenStateCopyWith<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  factory _$$_ProfileScreenStateCopyWith(_$_ProfileScreenState value,
          $Res Function(_$_ProfileScreenState) then) =
      __$$_ProfileScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ProfileUserName});
}

/// @nodoc
class __$$_ProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res, _$_ProfileScreenState>
    implements _$$_ProfileScreenStateCopyWith<$Res> {
  __$$_ProfileScreenStateCopyWithImpl(
      _$_ProfileScreenState _value, $Res Function(_$_ProfileScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ProfileUserName = null,
  }) {
    return _then(_$_ProfileScreenState(
      ProfileUserName: null == ProfileUserName
          ? _value.ProfileUserName
          : ProfileUserName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileScreenState implements _ProfileScreenState {
  const _$_ProfileScreenState({required this.ProfileUserName});

  @override
  final String ProfileUserName;

  @override
  String toString() {
    return 'ProfileScreenState(ProfileUserName: $ProfileUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileScreenState &&
            (identical(other.ProfileUserName, ProfileUserName) ||
                other.ProfileUserName == ProfileUserName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ProfileUserName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      __$$_ProfileScreenStateCopyWithImpl<_$_ProfileScreenState>(
          this, _$identity);
}

abstract class _ProfileScreenState implements ProfileScreenState {
  const factory _ProfileScreenState({required final String ProfileUserName}) =
      _$_ProfileScreenState;

  @override
  String get ProfileUserName;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
