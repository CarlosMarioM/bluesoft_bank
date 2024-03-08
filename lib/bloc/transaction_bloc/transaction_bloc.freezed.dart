// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Account> accounts) started,
    required TResult Function() navigateBack,
    required TResult Function() navigateWithdrawal,
    required TResult Function() navigateConsigment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Account> accounts)? started,
    TResult? Function()? navigateBack,
    TResult? Function()? navigateWithdrawal,
    TResult? Function()? navigateConsigment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Account> accounts)? started,
    TResult Function()? navigateBack,
    TResult Function()? navigateWithdrawal,
    TResult Function()? navigateConsigment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NavigateBack value) navigateBack,
    required TResult Function(_NavigateWithdrawal value) navigateWithdrawal,
    required TResult Function(_NavigateConsigment value) navigateConsigment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NavigateBack value)? navigateBack,
    TResult? Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult? Function(_NavigateConsigment value)? navigateConsigment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NavigateBack value)? navigateBack,
    TResult Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult Function(_NavigateConsigment value)? navigateConsigment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> accounts});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$StartedImpl(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(final List<Account> accounts) : _accounts = accounts;

  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'TransactionEvent.started(accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Account> accounts) started,
    required TResult Function() navigateBack,
    required TResult Function() navigateWithdrawal,
    required TResult Function() navigateConsigment,
  }) {
    return started(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Account> accounts)? started,
    TResult? Function()? navigateBack,
    TResult? Function()? navigateWithdrawal,
    TResult? Function()? navigateConsigment,
  }) {
    return started?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Account> accounts)? started,
    TResult Function()? navigateBack,
    TResult Function()? navigateWithdrawal,
    TResult Function()? navigateConsigment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(accounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NavigateBack value) navigateBack,
    required TResult Function(_NavigateWithdrawal value) navigateWithdrawal,
    required TResult Function(_NavigateConsigment value) navigateConsigment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NavigateBack value)? navigateBack,
    TResult? Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult? Function(_NavigateConsigment value)? navigateConsigment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NavigateBack value)? navigateBack,
    TResult Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult Function(_NavigateConsigment value)? navigateConsigment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransactionEvent {
  const factory _Started(final List<Account> accounts) = _$StartedImpl;

  List<Account> get accounts;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateBackImplCopyWith<$Res> {
  factory _$$NavigateBackImplCopyWith(
          _$NavigateBackImpl value, $Res Function(_$NavigateBackImpl) then) =
      __$$NavigateBackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$NavigateBackImpl>
    implements _$$NavigateBackImplCopyWith<$Res> {
  __$$NavigateBackImplCopyWithImpl(
      _$NavigateBackImpl _value, $Res Function(_$NavigateBackImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateBackImpl implements _NavigateBack {
  const _$NavigateBackImpl();

  @override
  String toString() {
    return 'TransactionEvent.navigateBack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateBackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Account> accounts) started,
    required TResult Function() navigateBack,
    required TResult Function() navigateWithdrawal,
    required TResult Function() navigateConsigment,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Account> accounts)? started,
    TResult? Function()? navigateBack,
    TResult? Function()? navigateWithdrawal,
    TResult? Function()? navigateConsigment,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Account> accounts)? started,
    TResult Function()? navigateBack,
    TResult Function()? navigateWithdrawal,
    TResult Function()? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NavigateBack value) navigateBack,
    required TResult Function(_NavigateWithdrawal value) navigateWithdrawal,
    required TResult Function(_NavigateConsigment value) navigateConsigment,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NavigateBack value)? navigateBack,
    TResult? Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult? Function(_NavigateConsigment value)? navigateConsigment,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NavigateBack value)? navigateBack,
    TResult Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult Function(_NavigateConsigment value)? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class _NavigateBack implements TransactionEvent {
  const factory _NavigateBack() = _$NavigateBackImpl;
}

/// @nodoc
abstract class _$$NavigateWithdrawalImplCopyWith<$Res> {
  factory _$$NavigateWithdrawalImplCopyWith(_$NavigateWithdrawalImpl value,
          $Res Function(_$NavigateWithdrawalImpl) then) =
      __$$NavigateWithdrawalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateWithdrawalImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$NavigateWithdrawalImpl>
    implements _$$NavigateWithdrawalImplCopyWith<$Res> {
  __$$NavigateWithdrawalImplCopyWithImpl(_$NavigateWithdrawalImpl _value,
      $Res Function(_$NavigateWithdrawalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateWithdrawalImpl implements _NavigateWithdrawal {
  const _$NavigateWithdrawalImpl();

  @override
  String toString() {
    return 'TransactionEvent.navigateWithdrawal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateWithdrawalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Account> accounts) started,
    required TResult Function() navigateBack,
    required TResult Function() navigateWithdrawal,
    required TResult Function() navigateConsigment,
  }) {
    return navigateWithdrawal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Account> accounts)? started,
    TResult? Function()? navigateBack,
    TResult? Function()? navigateWithdrawal,
    TResult? Function()? navigateConsigment,
  }) {
    return navigateWithdrawal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Account> accounts)? started,
    TResult Function()? navigateBack,
    TResult Function()? navigateWithdrawal,
    TResult Function()? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateWithdrawal != null) {
      return navigateWithdrawal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NavigateBack value) navigateBack,
    required TResult Function(_NavigateWithdrawal value) navigateWithdrawal,
    required TResult Function(_NavigateConsigment value) navigateConsigment,
  }) {
    return navigateWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NavigateBack value)? navigateBack,
    TResult? Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult? Function(_NavigateConsigment value)? navigateConsigment,
  }) {
    return navigateWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NavigateBack value)? navigateBack,
    TResult Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult Function(_NavigateConsigment value)? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateWithdrawal != null) {
      return navigateWithdrawal(this);
    }
    return orElse();
  }
}

abstract class _NavigateWithdrawal implements TransactionEvent {
  const factory _NavigateWithdrawal() = _$NavigateWithdrawalImpl;
}

/// @nodoc
abstract class _$$NavigateConsigmentImplCopyWith<$Res> {
  factory _$$NavigateConsigmentImplCopyWith(_$NavigateConsigmentImpl value,
          $Res Function(_$NavigateConsigmentImpl) then) =
      __$$NavigateConsigmentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateConsigmentImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$NavigateConsigmentImpl>
    implements _$$NavigateConsigmentImplCopyWith<$Res> {
  __$$NavigateConsigmentImplCopyWithImpl(_$NavigateConsigmentImpl _value,
      $Res Function(_$NavigateConsigmentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateConsigmentImpl implements _NavigateConsigment {
  const _$NavigateConsigmentImpl();

  @override
  String toString() {
    return 'TransactionEvent.navigateConsigment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateConsigmentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Account> accounts) started,
    required TResult Function() navigateBack,
    required TResult Function() navigateWithdrawal,
    required TResult Function() navigateConsigment,
  }) {
    return navigateConsigment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Account> accounts)? started,
    TResult? Function()? navigateBack,
    TResult? Function()? navigateWithdrawal,
    TResult? Function()? navigateConsigment,
  }) {
    return navigateConsigment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Account> accounts)? started,
    TResult Function()? navigateBack,
    TResult Function()? navigateWithdrawal,
    TResult Function()? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateConsigment != null) {
      return navigateConsigment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NavigateBack value) navigateBack,
    required TResult Function(_NavigateWithdrawal value) navigateWithdrawal,
    required TResult Function(_NavigateConsigment value) navigateConsigment,
  }) {
    return navigateConsigment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NavigateBack value)? navigateBack,
    TResult? Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult? Function(_NavigateConsigment value)? navigateConsigment,
  }) {
    return navigateConsigment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NavigateBack value)? navigateBack,
    TResult Function(_NavigateWithdrawal value)? navigateWithdrawal,
    TResult Function(_NavigateConsigment value)? navigateConsigment,
    required TResult orElse(),
  }) {
    if (navigateConsigment != null) {
      return navigateConsigment(this);
    }
    return orElse();
  }
}

abstract class _NavigateConsigment implements TransactionEvent {
  const factory _NavigateConsigment() = _$NavigateConsigmentImpl;
}

/// @nodoc
mixin _$TransactionState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  UiEvent<Nothing>? get navigateBack => throw _privateConstructorUsedError;
  UiEvent<Nothing>? get navigateWithdrawal =>
      throw _privateConstructorUsedError;
  UiEvent<Nothing>? get navigateConsigment =>
      throw _privateConstructorUsedError;
  UiEvent<Nothing>? get navigateTransfer => throw _privateConstructorUsedError;
  UiEvent<Nothing>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Transaction> transactions,
      UiEvent<Nothing>? navigateBack,
      UiEvent<Nothing>? navigateWithdrawal,
      UiEvent<Nothing>? navigateConsigment,
      UiEvent<Nothing>? navigateTransfer,
      UiEvent<Nothing>? error});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactions = null,
    Object? navigateBack = freezed,
    Object? navigateWithdrawal = freezed,
    Object? navigateConsigment = freezed,
    Object? navigateTransfer = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      navigateBack: freezed == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateWithdrawal: freezed == navigateWithdrawal
          ? _value.navigateWithdrawal
          : navigateWithdrawal // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateConsigment: freezed == navigateConsigment
          ? _value.navigateConsigment
          : navigateConsigment // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateTransfer: freezed == navigateTransfer
          ? _value.navigateTransfer
          : navigateTransfer // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Transaction> transactions,
      UiEvent<Nothing>? navigateBack,
      UiEvent<Nothing>? navigateWithdrawal,
      UiEvent<Nothing>? navigateConsigment,
      UiEvent<Nothing>? navigateTransfer,
      UiEvent<Nothing>? error});
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactions = null,
    Object? navigateBack = freezed,
    Object? navigateWithdrawal = freezed,
    Object? navigateConsigment = freezed,
    Object? navigateTransfer = freezed,
    Object? error = freezed,
  }) {
    return _then(_$TransactionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      navigateBack: freezed == navigateBack
          ? _value.navigateBack
          : navigateBack // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateWithdrawal: freezed == navigateWithdrawal
          ? _value.navigateWithdrawal
          : navigateWithdrawal // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateConsigment: freezed == navigateConsigment
          ? _value.navigateConsigment
          : navigateConsigment // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateTransfer: freezed == navigateTransfer
          ? _value.navigateTransfer
          : navigateTransfer // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {this.isLoading = false,
      final List<Transaction> transactions = const [],
      this.navigateBack,
      this.navigateWithdrawal,
      this.navigateConsigment,
      this.navigateTransfer,
      this.error})
      : _transactions = transactions;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Transaction> _transactions;
  @override
  @JsonKey()
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final UiEvent<Nothing>? navigateBack;
  @override
  final UiEvent<Nothing>? navigateWithdrawal;
  @override
  final UiEvent<Nothing>? navigateConsigment;
  @override
  final UiEvent<Nothing>? navigateTransfer;
  @override
  final UiEvent<Nothing>? error;

  @override
  String toString() {
    return 'TransactionState(isLoading: $isLoading, transactions: $transactions, navigateBack: $navigateBack, navigateWithdrawal: $navigateWithdrawal, navigateConsigment: $navigateConsigment, navigateTransfer: $navigateTransfer, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.navigateBack, navigateBack) ||
                other.navigateBack == navigateBack) &&
            (identical(other.navigateWithdrawal, navigateWithdrawal) ||
                other.navigateWithdrawal == navigateWithdrawal) &&
            (identical(other.navigateConsigment, navigateConsigment) ||
                other.navigateConsigment == navigateConsigment) &&
            (identical(other.navigateTransfer, navigateTransfer) ||
                other.navigateTransfer == navigateTransfer) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_transactions),
      navigateBack,
      navigateWithdrawal,
      navigateConsigment,
      navigateTransfer,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {final bool isLoading,
      final List<Transaction> transactions,
      final UiEvent<Nothing>? navigateBack,
      final UiEvent<Nothing>? navigateWithdrawal,
      final UiEvent<Nothing>? navigateConsigment,
      final UiEvent<Nothing>? navigateTransfer,
      final UiEvent<Nothing>? error}) = _$TransactionStateImpl;

  @override
  bool get isLoading;
  @override
  List<Transaction> get transactions;
  @override
  UiEvent<Nothing>? get navigateBack;
  @override
  UiEvent<Nothing>? get navigateWithdrawal;
  @override
  UiEvent<Nothing>? get navigateConsigment;
  @override
  UiEvent<Nothing>? get navigateTransfer;
  @override
  UiEvent<Nothing>? get error;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
