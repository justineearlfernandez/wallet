// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_money_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SendMoneyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMoneyInitial value) initial,
    required TResult Function(SendMoneyLoading value) loading,
    required TResult Function(SendMoneySuccess value) success,
    required TResult Function(SendMoneyError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMoneyInitial value)? initial,
    TResult? Function(SendMoneyLoading value)? loading,
    TResult? Function(SendMoneySuccess value)? success,
    TResult? Function(SendMoneyError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMoneyInitial value)? initial,
    TResult Function(SendMoneyLoading value)? loading,
    TResult Function(SendMoneySuccess value)? success,
    TResult Function(SendMoneyError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMoneyStateCopyWith<$Res> {
  factory $SendMoneyStateCopyWith(
    SendMoneyState value,
    $Res Function(SendMoneyState) then,
  ) = _$SendMoneyStateCopyWithImpl<$Res, SendMoneyState>;
}

/// @nodoc
class _$SendMoneyStateCopyWithImpl<$Res, $Val extends SendMoneyState>
    implements $SendMoneyStateCopyWith<$Res> {
  _$SendMoneyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMoneyInitialImplCopyWith<$Res> {
  factory _$$SendMoneyInitialImplCopyWith(
    _$SendMoneyInitialImpl value,
    $Res Function(_$SendMoneyInitialImpl) then,
  ) = __$$SendMoneyInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendMoneyInitialImplCopyWithImpl<$Res>
    extends _$SendMoneyStateCopyWithImpl<$Res, _$SendMoneyInitialImpl>
    implements _$$SendMoneyInitialImplCopyWith<$Res> {
  __$$SendMoneyInitialImplCopyWithImpl(
    _$SendMoneyInitialImpl _value,
    $Res Function(_$SendMoneyInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendMoneyInitialImpl implements SendMoneyInitial {
  const _$SendMoneyInitialImpl();

  @override
  String toString() {
    return 'SendMoneyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendMoneyInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMoneyInitial value) initial,
    required TResult Function(SendMoneyLoading value) loading,
    required TResult Function(SendMoneySuccess value) success,
    required TResult Function(SendMoneyError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMoneyInitial value)? initial,
    TResult? Function(SendMoneyLoading value)? loading,
    TResult? Function(SendMoneySuccess value)? success,
    TResult? Function(SendMoneyError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMoneyInitial value)? initial,
    TResult Function(SendMoneyLoading value)? loading,
    TResult Function(SendMoneySuccess value)? success,
    TResult Function(SendMoneyError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SendMoneyInitial implements SendMoneyState {
  const factory SendMoneyInitial() = _$SendMoneyInitialImpl;
}

/// @nodoc
abstract class _$$SendMoneyLoadingImplCopyWith<$Res> {
  factory _$$SendMoneyLoadingImplCopyWith(
    _$SendMoneyLoadingImpl value,
    $Res Function(_$SendMoneyLoadingImpl) then,
  ) = __$$SendMoneyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendMoneyLoadingImplCopyWithImpl<$Res>
    extends _$SendMoneyStateCopyWithImpl<$Res, _$SendMoneyLoadingImpl>
    implements _$$SendMoneyLoadingImplCopyWith<$Res> {
  __$$SendMoneyLoadingImplCopyWithImpl(
    _$SendMoneyLoadingImpl _value,
    $Res Function(_$SendMoneyLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendMoneyLoadingImpl implements SendMoneyLoading {
  const _$SendMoneyLoadingImpl();

  @override
  String toString() {
    return 'SendMoneyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendMoneyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMoneyInitial value) initial,
    required TResult Function(SendMoneyLoading value) loading,
    required TResult Function(SendMoneySuccess value) success,
    required TResult Function(SendMoneyError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMoneyInitial value)? initial,
    TResult? Function(SendMoneyLoading value)? loading,
    TResult? Function(SendMoneySuccess value)? success,
    TResult? Function(SendMoneyError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMoneyInitial value)? initial,
    TResult Function(SendMoneyLoading value)? loading,
    TResult Function(SendMoneySuccess value)? success,
    TResult Function(SendMoneyError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendMoneyLoading implements SendMoneyState {
  const factory SendMoneyLoading() = _$SendMoneyLoadingImpl;
}

/// @nodoc
abstract class _$$SendMoneySuccessImplCopyWith<$Res> {
  factory _$$SendMoneySuccessImplCopyWith(
    _$SendMoneySuccessImpl value,
    $Res Function(_$SendMoneySuccessImpl) then,
  ) = __$$SendMoneySuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendMoneySuccessImplCopyWithImpl<$Res>
    extends _$SendMoneyStateCopyWithImpl<$Res, _$SendMoneySuccessImpl>
    implements _$$SendMoneySuccessImplCopyWith<$Res> {
  __$$SendMoneySuccessImplCopyWithImpl(
    _$SendMoneySuccessImpl _value,
    $Res Function(_$SendMoneySuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendMoneySuccessImpl implements SendMoneySuccess {
  const _$SendMoneySuccessImpl();

  @override
  String toString() {
    return 'SendMoneyState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendMoneySuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMoneyInitial value) initial,
    required TResult Function(SendMoneyLoading value) loading,
    required TResult Function(SendMoneySuccess value) success,
    required TResult Function(SendMoneyError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMoneyInitial value)? initial,
    TResult? Function(SendMoneyLoading value)? loading,
    TResult? Function(SendMoneySuccess value)? success,
    TResult? Function(SendMoneyError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMoneyInitial value)? initial,
    TResult Function(SendMoneyLoading value)? loading,
    TResult Function(SendMoneySuccess value)? success,
    TResult Function(SendMoneyError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SendMoneySuccess implements SendMoneyState {
  const factory SendMoneySuccess() = _$SendMoneySuccessImpl;
}

/// @nodoc
abstract class _$$SendMoneyErrorImplCopyWith<$Res> {
  factory _$$SendMoneyErrorImplCopyWith(
    _$SendMoneyErrorImpl value,
    $Res Function(_$SendMoneyErrorImpl) then,
  ) = __$$SendMoneyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SendMoneyErrorImplCopyWithImpl<$Res>
    extends _$SendMoneyStateCopyWithImpl<$Res, _$SendMoneyErrorImpl>
    implements _$$SendMoneyErrorImplCopyWith<$Res> {
  __$$SendMoneyErrorImplCopyWithImpl(
    _$SendMoneyErrorImpl _value,
    $Res Function(_$SendMoneyErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SendMoneyErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SendMoneyErrorImpl implements SendMoneyError {
  const _$SendMoneyErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SendMoneyState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMoneyErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMoneyErrorImplCopyWith<_$SendMoneyErrorImpl> get copyWith =>
      __$$SendMoneyErrorImplCopyWithImpl<_$SendMoneyErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMoneyInitial value) initial,
    required TResult Function(SendMoneyLoading value) loading,
    required TResult Function(SendMoneySuccess value) success,
    required TResult Function(SendMoneyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMoneyInitial value)? initial,
    TResult? Function(SendMoneyLoading value)? loading,
    TResult? Function(SendMoneySuccess value)? success,
    TResult? Function(SendMoneyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMoneyInitial value)? initial,
    TResult Function(SendMoneyLoading value)? loading,
    TResult Function(SendMoneySuccess value)? success,
    TResult Function(SendMoneyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SendMoneyError implements SendMoneyState {
  const factory SendMoneyError(final String message) = _$SendMoneyErrorImpl;

  String get message;

  /// Create a copy of SendMoneyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMoneyErrorImplCopyWith<_$SendMoneyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
