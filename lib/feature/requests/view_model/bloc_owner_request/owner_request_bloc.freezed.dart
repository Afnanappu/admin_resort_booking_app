// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnerRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOwners,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        approveOwner,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        rejectOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchOwners,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOwners,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOwners value) fetchOwners,
    required TResult Function(_ApproveOwner value) approveOwner,
    required TResult Function(_RejectOwner value) rejectOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOwners value)? fetchOwners,
    TResult? Function(_ApproveOwner value)? approveOwner,
    TResult? Function(_RejectOwner value)? rejectOwner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOwners value)? fetchOwners,
    TResult Function(_ApproveOwner value)? approveOwner,
    TResult Function(_RejectOwner value)? rejectOwner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerRequestEventCopyWith<$Res> {
  factory $OwnerRequestEventCopyWith(
          OwnerRequestEvent value, $Res Function(OwnerRequestEvent) then) =
      _$OwnerRequestEventCopyWithImpl<$Res, OwnerRequestEvent>;
}

/// @nodoc
class _$OwnerRequestEventCopyWithImpl<$Res, $Val extends OwnerRequestEvent>
    implements $OwnerRequestEventCopyWith<$Res> {
  _$OwnerRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchOwnersImplCopyWith<$Res> {
  factory _$$FetchOwnersImplCopyWith(
          _$FetchOwnersImpl value, $Res Function(_$FetchOwnersImpl) then) =
      __$$FetchOwnersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOwnersImplCopyWithImpl<$Res>
    extends _$OwnerRequestEventCopyWithImpl<$Res, _$FetchOwnersImpl>
    implements _$$FetchOwnersImplCopyWith<$Res> {
  __$$FetchOwnersImplCopyWithImpl(
      _$FetchOwnersImpl _value, $Res Function(_$FetchOwnersImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchOwnersImpl implements _FetchOwners {
  const _$FetchOwnersImpl();

  @override
  String toString() {
    return 'OwnerRequestEvent.fetchOwners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOwnersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOwners,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        approveOwner,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        rejectOwner,
  }) {
    return fetchOwners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchOwners,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
  }) {
    return fetchOwners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOwners,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
    required TResult orElse(),
  }) {
    if (fetchOwners != null) {
      return fetchOwners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOwners value) fetchOwners,
    required TResult Function(_ApproveOwner value) approveOwner,
    required TResult Function(_RejectOwner value) rejectOwner,
  }) {
    return fetchOwners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOwners value)? fetchOwners,
    TResult? Function(_ApproveOwner value)? approveOwner,
    TResult? Function(_RejectOwner value)? rejectOwner,
  }) {
    return fetchOwners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOwners value)? fetchOwners,
    TResult Function(_ApproveOwner value)? approveOwner,
    TResult Function(_RejectOwner value)? rejectOwner,
    required TResult orElse(),
  }) {
    if (fetchOwners != null) {
      return fetchOwners(this);
    }
    return orElse();
  }
}

abstract class _FetchOwners implements OwnerRequestEvent {
  const factory _FetchOwners() = _$FetchOwnersImpl;
}

/// @nodoc
abstract class _$$ApproveOwnerImplCopyWith<$Res> {
  factory _$$ApproveOwnerImplCopyWith(
          _$ApproveOwnerImpl value, $Res Function(_$ApproveOwnerImpl) then) =
      __$$ApproveOwnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String ownerId, String email, String ownerName});
}

/// @nodoc
class __$$ApproveOwnerImplCopyWithImpl<$Res>
    extends _$OwnerRequestEventCopyWithImpl<$Res, _$ApproveOwnerImpl>
    implements _$$ApproveOwnerImplCopyWith<$Res> {
  __$$ApproveOwnerImplCopyWithImpl(
      _$ApproveOwnerImpl _value, $Res Function(_$ApproveOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? ownerId = null,
    Object? email = null,
    Object? ownerName = null,
  }) {
    return _then(_$ApproveOwnerImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApproveOwnerImpl implements _ApproveOwner {
  const _$ApproveOwnerImpl(
      {required this.uid,
      required this.ownerId,
      required this.email,
      required this.ownerName});

  @override
  final String uid;
  @override
  final String ownerId;
  @override
  final String email;
  @override
  final String ownerName;

  @override
  String toString() {
    return 'OwnerRequestEvent.approveOwner(uid: $uid, ownerId: $ownerId, email: $email, ownerName: $ownerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveOwnerImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, ownerId, email, ownerName);

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveOwnerImplCopyWith<_$ApproveOwnerImpl> get copyWith =>
      __$$ApproveOwnerImplCopyWithImpl<_$ApproveOwnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOwners,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        approveOwner,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        rejectOwner,
  }) {
    return approveOwner(uid, ownerId, email, ownerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchOwners,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
  }) {
    return approveOwner?.call(uid, ownerId, email, ownerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOwners,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
    required TResult orElse(),
  }) {
    if (approveOwner != null) {
      return approveOwner(uid, ownerId, email, ownerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOwners value) fetchOwners,
    required TResult Function(_ApproveOwner value) approveOwner,
    required TResult Function(_RejectOwner value) rejectOwner,
  }) {
    return approveOwner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOwners value)? fetchOwners,
    TResult? Function(_ApproveOwner value)? approveOwner,
    TResult? Function(_RejectOwner value)? rejectOwner,
  }) {
    return approveOwner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOwners value)? fetchOwners,
    TResult Function(_ApproveOwner value)? approveOwner,
    TResult Function(_RejectOwner value)? rejectOwner,
    required TResult orElse(),
  }) {
    if (approveOwner != null) {
      return approveOwner(this);
    }
    return orElse();
  }
}

abstract class _ApproveOwner implements OwnerRequestEvent {
  const factory _ApproveOwner(
      {required final String uid,
      required final String ownerId,
      required final String email,
      required final String ownerName}) = _$ApproveOwnerImpl;

  String get uid;
  String get ownerId;
  String get email;
  String get ownerName;

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveOwnerImplCopyWith<_$ApproveOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectOwnerImplCopyWith<$Res> {
  factory _$$RejectOwnerImplCopyWith(
          _$RejectOwnerImpl value, $Res Function(_$RejectOwnerImpl) then) =
      __$$RejectOwnerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String ownerId, String email, String ownerName});
}

/// @nodoc
class __$$RejectOwnerImplCopyWithImpl<$Res>
    extends _$OwnerRequestEventCopyWithImpl<$Res, _$RejectOwnerImpl>
    implements _$$RejectOwnerImplCopyWith<$Res> {
  __$$RejectOwnerImplCopyWithImpl(
      _$RejectOwnerImpl _value, $Res Function(_$RejectOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? ownerId = null,
    Object? email = null,
    Object? ownerName = null,
  }) {
    return _then(_$RejectOwnerImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RejectOwnerImpl implements _RejectOwner {
  const _$RejectOwnerImpl(
      {required this.uid,
      required this.ownerId,
      required this.email,
      required this.ownerName});

  @override
  final String uid;
  @override
  final String ownerId;
  @override
  final String email;
  @override
  final String ownerName;

  @override
  String toString() {
    return 'OwnerRequestEvent.rejectOwner(uid: $uid, ownerId: $ownerId, email: $email, ownerName: $ownerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectOwnerImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, ownerId, email, ownerName);

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectOwnerImplCopyWith<_$RejectOwnerImpl> get copyWith =>
      __$$RejectOwnerImplCopyWithImpl<_$RejectOwnerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchOwners,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        approveOwner,
    required TResult Function(
            String uid, String ownerId, String email, String ownerName)
        rejectOwner,
  }) {
    return rejectOwner(uid, ownerId, email, ownerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchOwners,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult? Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
  }) {
    return rejectOwner?.call(uid, ownerId, email, ownerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchOwners,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        approveOwner,
    TResult Function(
            String uid, String ownerId, String email, String ownerName)?
        rejectOwner,
    required TResult orElse(),
  }) {
    if (rejectOwner != null) {
      return rejectOwner(uid, ownerId, email, ownerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOwners value) fetchOwners,
    required TResult Function(_ApproveOwner value) approveOwner,
    required TResult Function(_RejectOwner value) rejectOwner,
  }) {
    return rejectOwner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOwners value)? fetchOwners,
    TResult? Function(_ApproveOwner value)? approveOwner,
    TResult? Function(_RejectOwner value)? rejectOwner,
  }) {
    return rejectOwner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOwners value)? fetchOwners,
    TResult Function(_ApproveOwner value)? approveOwner,
    TResult Function(_RejectOwner value)? rejectOwner,
    required TResult orElse(),
  }) {
    if (rejectOwner != null) {
      return rejectOwner(this);
    }
    return orElse();
  }
}

abstract class _RejectOwner implements OwnerRequestEvent {
  const factory _RejectOwner(
      {required final String uid,
      required final String ownerId,
      required final String email,
      required final String ownerName}) = _$RejectOwnerImpl;

  String get uid;
  String get ownerId;
  String get email;
  String get ownerName;

  /// Create a copy of OwnerRequestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectOwnerImplCopyWith<_$RejectOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OwnerRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerRequestStateCopyWith<$Res> {
  factory $OwnerRequestStateCopyWith(
          OwnerRequestState value, $Res Function(OwnerRequestState) then) =
      _$OwnerRequestStateCopyWithImpl<$Res, OwnerRequestState>;
}

/// @nodoc
class _$OwnerRequestStateCopyWithImpl<$Res, $Val extends OwnerRequestState>
    implements $OwnerRequestStateCopyWith<$Res> {
  _$OwnerRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OwnerRequestState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OwnerRequestState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OwnerRequestState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OwnerRequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RequestOwnerModel> ownersList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownersList = null,
  }) {
    return _then(_$SuccessImpl(
      null == ownersList
          ? _value._ownersList
          : ownersList // ignore: cast_nullable_to_non_nullable
              as List<RequestOwnerModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<RequestOwnerModel> ownersList)
      : _ownersList = ownersList;

  final List<RequestOwnerModel> _ownersList;
  @override
  List<RequestOwnerModel> get ownersList {
    if (_ownersList is EqualUnmodifiableListView) return _ownersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ownersList);
  }

  @override
  String toString() {
    return 'OwnerRequestState.success(ownersList: $ownersList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._ownersList, _ownersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ownersList));

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return success(ownersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return success?.call(ownersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ownersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OwnerRequestState {
  const factory _Success(final List<RequestOwnerModel> ownersList) =
      _$SuccessImpl;

  List<RequestOwnerModel> get ownersList;

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OwnerRequestState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OwnerRequestState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestedAcceptedImplCopyWith<$Res> {
  factory _$$RequestedAcceptedImplCopyWith(_$RequestedAcceptedImpl value,
          $Res Function(_$RequestedAcceptedImpl) then) =
      __$$RequestedAcceptedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedAcceptedImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$RequestedAcceptedImpl>
    implements _$$RequestedAcceptedImplCopyWith<$Res> {
  __$$RequestedAcceptedImplCopyWithImpl(_$RequestedAcceptedImpl _value,
      $Res Function(_$RequestedAcceptedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedAcceptedImpl implements _RequestedAccepted {
  const _$RequestedAcceptedImpl();

  @override
  String toString() {
    return 'OwnerRequestState.requestedAccepted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedAcceptedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return requestedAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return requestedAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedAccepted != null) {
      return requestedAccepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return requestedAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return requestedAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedAccepted != null) {
      return requestedAccepted(this);
    }
    return orElse();
  }
}

abstract class _RequestedAccepted implements OwnerRequestState {
  const factory _RequestedAccepted() = _$RequestedAcceptedImpl;
}

/// @nodoc
abstract class _$$RequestedRejectedImplCopyWith<$Res> {
  factory _$$RequestedRejectedImplCopyWith(_$RequestedRejectedImpl value,
          $Res Function(_$RequestedRejectedImpl) then) =
      __$$RequestedRejectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestedRejectedImplCopyWithImpl<$Res>
    extends _$OwnerRequestStateCopyWithImpl<$Res, _$RequestedRejectedImpl>
    implements _$$RequestedRejectedImplCopyWith<$Res> {
  __$$RequestedRejectedImplCopyWithImpl(_$RequestedRejectedImpl _value,
      $Res Function(_$RequestedRejectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerRequestState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestedRejectedImpl implements _RequestedRejected {
  const _$RequestedRejectedImpl();

  @override
  String toString() {
    return 'OwnerRequestState.requestedRejected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestedRejectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RequestOwnerModel> ownersList) success,
    required TResult Function(String error) error,
    required TResult Function() requestedAccepted,
    required TResult Function() requestedRejected,
  }) {
    return requestedRejected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RequestOwnerModel> ownersList)? success,
    TResult? Function(String error)? error,
    TResult? Function()? requestedAccepted,
    TResult? Function()? requestedRejected,
  }) {
    return requestedRejected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RequestOwnerModel> ownersList)? success,
    TResult Function(String error)? error,
    TResult Function()? requestedAccepted,
    TResult Function()? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedRejected != null) {
      return requestedRejected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_RequestedAccepted value) requestedAccepted,
    required TResult Function(_RequestedRejected value) requestedRejected,
  }) {
    return requestedRejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_RequestedAccepted value)? requestedAccepted,
    TResult? Function(_RequestedRejected value)? requestedRejected,
  }) {
    return requestedRejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_RequestedAccepted value)? requestedAccepted,
    TResult Function(_RequestedRejected value)? requestedRejected,
    required TResult orElse(),
  }) {
    if (requestedRejected != null) {
      return requestedRejected(this);
    }
    return orElse();
  }
}

abstract class _RequestedRejected implements OwnerRequestState {
  const factory _RequestedRejected() = _$RequestedRejectedImpl;
}
