// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId) initial,
    required TResult Function(List<Account> clientId) navigateTransactions,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId)? initial,
    TResult? Function(List<Account> clientId)? navigateTransactions,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId)? initial,
    TResult Function(List<Account> clientId)? navigateTransactions,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateTransactions value) navigateTransactions,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateTransactions value)? navigateTransactions,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateTransactions value)? navigateTransactions,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$InitialImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.clientId);

  @override
  final String clientId;

  @override
  String toString() {
    return 'HomeEvent.initial(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId) initial,
    required TResult Function(List<Account> clientId) navigateTransactions,
    required TResult Function() logout,
  }) {
    return initial(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId)? initial,
    TResult? Function(List<Account> clientId)? navigateTransactions,
    TResult? Function()? logout,
  }) {
    return initial?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId)? initial,
    TResult Function(List<Account> clientId)? navigateTransactions,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateTransactions value) navigateTransactions,
    required TResult Function(_Logout value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateTransactions value)? navigateTransactions,
    TResult? Function(_Logout value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateTransactions value)? navigateTransactions,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeEvent {
  const factory _Initial(final String clientId) = _$InitialImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateTransactionsImplCopyWith<$Res> {
  factory _$$NavigateTransactionsImplCopyWith(_$NavigateTransactionsImpl value,
          $Res Function(_$NavigateTransactionsImpl) then) =
      __$$NavigateTransactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Account> clientId});
}

/// @nodoc
class __$$NavigateTransactionsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NavigateTransactionsImpl>
    implements _$$NavigateTransactionsImplCopyWith<$Res> {
  __$$NavigateTransactionsImplCopyWithImpl(_$NavigateTransactionsImpl _value,
      $Res Function(_$NavigateTransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$NavigateTransactionsImpl(
      null == clientId
          ? _value._clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$NavigateTransactionsImpl implements _NavigateTransactions {
  const _$NavigateTransactionsImpl(final List<Account> clientId)
      : _clientId = clientId;

  final List<Account> _clientId;
  @override
  List<Account> get clientId {
    if (_clientId is EqualUnmodifiableListView) return _clientId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clientId);
  }

  @override
  String toString() {
    return 'HomeEvent.navigateTransactions(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateTransactionsImpl &&
            const DeepCollectionEquality().equals(other._clientId, _clientId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clientId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateTransactionsImplCopyWith<_$NavigateTransactionsImpl>
      get copyWith =>
          __$$NavigateTransactionsImplCopyWithImpl<_$NavigateTransactionsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId) initial,
    required TResult Function(List<Account> clientId) navigateTransactions,
    required TResult Function() logout,
  }) {
    return navigateTransactions(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId)? initial,
    TResult? Function(List<Account> clientId)? navigateTransactions,
    TResult? Function()? logout,
  }) {
    return navigateTransactions?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId)? initial,
    TResult Function(List<Account> clientId)? navigateTransactions,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (navigateTransactions != null) {
      return navigateTransactions(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateTransactions value) navigateTransactions,
    required TResult Function(_Logout value) logout,
  }) {
    return navigateTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateTransactions value)? navigateTransactions,
    TResult? Function(_Logout value)? logout,
  }) {
    return navigateTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateTransactions value)? navigateTransactions,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (navigateTransactions != null) {
      return navigateTransactions(this);
    }
    return orElse();
  }
}

abstract class _NavigateTransactions implements HomeEvent {
  const factory _NavigateTransactions(final List<Account> clientId) =
      _$NavigateTransactionsImpl;

  List<Account> get clientId;
  @JsonKey(ignore: true)
  _$$NavigateTransactionsImplCopyWith<_$NavigateTransactionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String clientId) initial,
    required TResult Function(List<Account> clientId) navigateTransactions,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String clientId)? initial,
    TResult? Function(List<Account> clientId)? navigateTransactions,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String clientId)? initial,
    TResult Function(List<Account> clientId)? navigateTransactions,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NavigateTransactions value) navigateTransactions,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NavigateTransactions value)? navigateTransactions,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NavigateTransactions value)? navigateTransactions,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements HomeEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  num? get totalBalance => throw _privateConstructorUsedError;
  UiEvent<List<Account>>? get accounts => throw _privateConstructorUsedError;
  UiEvent<Nothing>? get logout => throw _privateConstructorUsedError;
  UiEvent<List<Account>>? get navigateTransactions =>
      throw _privateConstructorUsedError;
  UiEvent<Nothing>? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      num? totalBalance,
      UiEvent<List<Account>>? accounts,
      UiEvent<Nothing>? logout,
      UiEvent<List<Account>>? navigateTransactions,
      UiEvent<Nothing>? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalBalance = freezed,
    Object? accounts = freezed,
    Object? logout = freezed,
    Object? navigateTransactions = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBalance: freezed == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as num?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as UiEvent<List<Account>>?,
      logout: freezed == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateTransactions: freezed == navigateTransactions
          ? _value.navigateTransactions
          : navigateTransactions // ignore: cast_nullable_to_non_nullable
              as UiEvent<List<Account>>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      num? totalBalance,
      UiEvent<List<Account>>? accounts,
      UiEvent<Nothing>? logout,
      UiEvent<List<Account>>? navigateTransactions,
      UiEvent<Nothing>? error});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalBalance = freezed,
    Object? accounts = freezed,
    Object? logout = freezed,
    Object? navigateTransactions = freezed,
    Object? error = freezed,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBalance: freezed == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as num?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as UiEvent<List<Account>>?,
      logout: freezed == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
      navigateTransactions: freezed == navigateTransactions
          ? _value.navigateTransactions
          : navigateTransactions // ignore: cast_nullable_to_non_nullable
              as UiEvent<List<Account>>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UiEvent<Nothing>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.isLoading = false,
      this.totalBalance,
      this.accounts,
      this.logout,
      this.navigateTransactions,
      this.error});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final num? totalBalance;
  @override
  final UiEvent<List<Account>>? accounts;
  @override
  final UiEvent<Nothing>? logout;
  @override
  final UiEvent<List<Account>>? navigateTransactions;
  @override
  final UiEvent<Nothing>? error;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, totalBalance: $totalBalance, accounts: $accounts, logout: $logout, navigateTransactions: $navigateTransactions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance) &&
            (identical(other.accounts, accounts) ||
                other.accounts == accounts) &&
            (identical(other.logout, logout) || other.logout == logout) &&
            (identical(other.navigateTransactions, navigateTransactions) ||
                other.navigateTransactions == navigateTransactions) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, totalBalance,
      accounts, logout, navigateTransactions, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final num? totalBalance,
      final UiEvent<List<Account>>? accounts,
      final UiEvent<Nothing>? logout,
      final UiEvent<List<Account>>? navigateTransactions,
      final UiEvent<Nothing>? error}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  num? get totalBalance;
  @override
  UiEvent<List<Account>>? get accounts;
  @override
  UiEvent<Nothing>? get logout;
  @override
  UiEvent<List<Account>>? get navigateTransactions;
  @override
  UiEvent<Nothing>? get error;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
