// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetExpensesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExpensesEventCopyWith<$Res> {
  factory $GetExpensesEventCopyWith(GetExpensesEvent value, $Res Function(GetExpensesEvent) then) =
      _$GetExpensesEventCopyWithImpl<$Res, GetExpensesEvent>;
}

/// @nodoc
class _$GetExpensesEventCopyWithImpl<$Res, $Val extends GetExpensesEvent> implements $GetExpensesEventCopyWith<$Res> {
  _$GetExpensesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetExpensesImplCopyWith<$Res> {
  factory _$$GetExpensesImplCopyWith(_$GetExpensesImpl value, $Res Function(_$GetExpensesImpl) then) =
      __$$GetExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetExpensesImplCopyWithImpl<$Res> extends _$GetExpensesEventCopyWithImpl<$Res, _$GetExpensesImpl>
    implements _$$GetExpensesImplCopyWith<$Res> {
  __$$GetExpensesImplCopyWithImpl(_$GetExpensesImpl _value, $Res Function(_$GetExpensesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetExpensesImpl implements _GetExpenses {
  const _$GetExpensesImpl();

  @override
  String toString() {
    return 'GetExpensesEvent.getExpenses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
  }) {
    return getExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
  }) {
    return getExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
  }) {
    return getExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
  }) {
    return getExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses(this);
    }
    return orElse();
  }
}

abstract class _GetExpenses implements GetExpensesEvent {
  const factory _GetExpenses() = _$GetExpensesImpl;
}

/// @nodoc
mixin _$GetExpensesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expenses) expensesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expenses)? expensesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expenses)? expensesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(expensesLoaded value) expensesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(expensesLoaded value)? expensesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(expensesLoaded value)? expensesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExpensesStateCopyWith<$Res> {
  factory $GetExpensesStateCopyWith(GetExpensesState value, $Res Function(GetExpensesState) then) =
      _$GetExpensesStateCopyWithImpl<$Res, GetExpensesState>;
}

/// @nodoc
class _$GetExpensesStateCopyWithImpl<$Res, $Val extends GetExpensesState> implements $GetExpensesStateCopyWith<$Res> {
  _$GetExpensesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(_$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonState commonState});

  $CommonStateCopyWith<$Res> get commonState;
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res> extends _$GetExpensesStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(_$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commonState = null,
  }) {
    return _then(_$CommonStateImpl(
      commonState: null == commonState
          ? _value.commonState
          : commonState // ignore: cast_nullable_to_non_nullable
              as CommonState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommonStateCopyWith<$Res> get commonState {
    return $CommonStateCopyWith<$Res>(_value.commonState, (value) {
      return _then(_value.copyWith(commonState: value));
    });
  }
}

/// @nodoc

class _$CommonStateImpl implements _CommonState {
  const _$CommonStateImpl({required this.commonState});

  @override
  final CommonState commonState;

  @override
  String toString() {
    return 'GetExpensesState.commonState(commonState: $commonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.commonState, commonState) || other.commonState == commonState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commonState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      __$$CommonStateImplCopyWithImpl<_$CommonStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expenses) expensesLoaded,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expenses)? expensesLoaded,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expenses)? expensesLoaded,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this.commonState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(expensesLoaded value) expensesLoaded,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(expensesLoaded value)? expensesLoaded,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(expensesLoaded value)? expensesLoaded,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements GetExpensesState {
  const factory _CommonState({required final CommonState commonState}) = _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$expensesLoadedImplCopyWith<$Res> {
  factory _$$expensesLoadedImplCopyWith(_$expensesLoadedImpl value, $Res Function(_$expensesLoadedImpl) then) =
      __$$expensesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExpenseDto> expenses});
}

/// @nodoc
class __$$expensesLoadedImplCopyWithImpl<$Res> extends _$GetExpensesStateCopyWithImpl<$Res, _$expensesLoadedImpl>
    implements _$$expensesLoadedImplCopyWith<$Res> {
  __$$expensesLoadedImplCopyWithImpl(_$expensesLoadedImpl _value, $Res Function(_$expensesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
  }) {
    return _then(_$expensesLoadedImpl(
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// @nodoc

class _$expensesLoadedImpl implements expensesLoaded {
  const _$expensesLoadedImpl(final List<ExpenseDto> expenses) : _expenses = expenses;

  final List<ExpenseDto> _expenses;
  @override
  List<ExpenseDto> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'GetExpensesState.expensesLoaded(expenses: $expenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$expensesLoadedImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$expensesLoadedImplCopyWith<_$expensesLoadedImpl> get copyWith =>
      __$$expensesLoadedImplCopyWithImpl<_$expensesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expenses) expensesLoaded,
  }) {
    return expensesLoaded(expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expenses)? expensesLoaded,
  }) {
    return expensesLoaded?.call(expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expenses)? expensesLoaded,
    required TResult orElse(),
  }) {
    if (expensesLoaded != null) {
      return expensesLoaded(expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(expensesLoaded value) expensesLoaded,
  }) {
    return expensesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(expensesLoaded value)? expensesLoaded,
  }) {
    return expensesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(expensesLoaded value)? expensesLoaded,
    required TResult orElse(),
  }) {
    if (expensesLoaded != null) {
      return expensesLoaded(this);
    }
    return orElse();
  }
}

abstract class expensesLoaded implements GetExpensesState {
  const factory expensesLoaded(final List<ExpenseDto> expenses) = _$expensesLoadedImpl;

  List<ExpenseDto> get expenses;
  @JsonKey(ignore: true)
  _$$expensesLoadedImplCopyWith<_$expensesLoadedImpl> get copyWith => throw _privateConstructorUsedError;
}
