// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerState {
  TimerStateStatus? get status => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  bool? get directionForward => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimerStateStatus? status, int? duration, bool? directionForward)
        general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimerStateStatus? status, int? duration, bool? directionForward)?
        general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TimerStateStatus? status, int? duration, bool? directionForward)?
        general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateGeneral value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerStateGeneral value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateGeneral value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({TimerStateStatus? status, int? duration, bool? directionForward});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? duration = freezed,
    Object? directionForward = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStateStatus?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      directionForward: freezed == directionForward
          ? _value.directionForward
          : directionForward // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerStateGeneralImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$TimerStateGeneralImplCopyWith(_$TimerStateGeneralImpl value,
          $Res Function(_$TimerStateGeneralImpl) then) =
      __$$TimerStateGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TimerStateStatus? status, int? duration, bool? directionForward});
}

/// @nodoc
class __$$TimerStateGeneralImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$TimerStateGeneralImpl>
    implements _$$TimerStateGeneralImplCopyWith<$Res> {
  __$$TimerStateGeneralImplCopyWithImpl(_$TimerStateGeneralImpl _value,
      $Res Function(_$TimerStateGeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? duration = freezed,
    Object? directionForward = freezed,
  }) {
    return _then(_$TimerStateGeneralImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStateStatus?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      directionForward: freezed == directionForward
          ? _value.directionForward
          : directionForward // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$TimerStateGeneralImpl implements _TimerStateGeneral {
  const _$TimerStateGeneralImpl(
      {this.status, this.duration, this.directionForward});

  @override
  final TimerStateStatus? status;
  @override
  final int? duration;
  @override
  final bool? directionForward;

  @override
  String toString() {
    return 'TimerState.general(status: $status, duration: $duration, directionForward: $directionForward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStateGeneralImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.directionForward, directionForward) ||
                other.directionForward == directionForward));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, duration, directionForward);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStateGeneralImplCopyWith<_$TimerStateGeneralImpl> get copyWith =>
      __$$TimerStateGeneralImplCopyWithImpl<_$TimerStateGeneralImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimerStateStatus? status, int? duration, bool? directionForward)
        general,
  }) {
    return general(status, duration, directionForward);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimerStateStatus? status, int? duration, bool? directionForward)?
        general,
  }) {
    return general?.call(status, duration, directionForward);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TimerStateStatus? status, int? duration, bool? directionForward)?
        general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(status, duration, directionForward);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateGeneral value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerStateGeneral value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateGeneral value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _TimerStateGeneral implements TimerState {
  const factory _TimerStateGeneral(
      {final TimerStateStatus? status,
      final int? duration,
      final bool? directionForward}) = _$TimerStateGeneralImpl;

  @override
  TimerStateStatus? get status;
  @override
  int? get duration;
  @override
  bool? get directionForward;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerStateGeneralImplCopyWith<_$TimerStateGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
