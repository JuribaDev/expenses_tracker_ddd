// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpensesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
    required TResult Function(ExpenseDto expenseDto) addExpense,
    required TResult Function(int id) deleteExpense,
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
    TResult? Function(ExpenseDto expenseDto)? addExpense,
    TResult? Function(int id)? deleteExpense,
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    TResult Function(ExpenseDto expenseDto)? addExpense,
    TResult Function(int id)? deleteExpense,
    TResult Function(ExpenseDto expenseDto)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_UpdateExpense value) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesEventCopyWith<$Res> {
  factory $ExpensesEventCopyWith(
          ExpensesEvent value, $Res Function(ExpensesEvent) then) =
      _$ExpensesEventCopyWithImpl<$Res, ExpensesEvent>;
}

/// @nodoc
class _$ExpensesEventCopyWithImpl<$Res, $Val extends ExpensesEvent>
    implements $ExpensesEventCopyWith<$Res> {
  _$ExpensesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetExpensesImplCopyWith<$Res> {
  factory _$$GetExpensesImplCopyWith(
          _$GetExpensesImpl value, $Res Function(_$GetExpensesImpl) then) =
      __$$GetExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetExpensesImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$GetExpensesImpl>
    implements _$$GetExpensesImplCopyWith<$Res> {
  __$$GetExpensesImplCopyWithImpl(
      _$GetExpensesImpl _value, $Res Function(_$GetExpensesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetExpensesImpl implements _GetExpenses {
  const _$GetExpensesImpl();

  @override
  String toString() {
    return 'ExpensesEvent.getExpenses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
    required TResult Function(ExpenseDto expenseDto) addExpense,
    required TResult Function(int id) deleteExpense,
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) {
    return getExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
    TResult? Function(ExpenseDto expenseDto)? addExpense,
    TResult? Function(int id)? deleteExpense,
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) {
    return getExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    TResult Function(ExpenseDto expenseDto)? addExpense,
    TResult Function(int id)? deleteExpense,
    TResult Function(ExpenseDto expenseDto)? updateExpense,
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
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_UpdateExpense value) updateExpense,
  }) {
    return getExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) {
    return getExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) {
    if (getExpenses != null) {
      return getExpenses(this);
    }
    return orElse();
  }
}

abstract class _GetExpenses implements ExpensesEvent {
  const factory _GetExpenses() = _$GetExpensesImpl;
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(
          _$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(
      _$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseDto = null,
  }) {
    return _then(_$AddExpenseImpl(
      null == expenseDto
          ? _value.expenseDto
          : expenseDto // ignore: cast_nullable_to_non_nullable
              as ExpenseDto,
    ));
  }
}

/// @nodoc

class _$AddExpenseImpl implements _AddExpense {
  const _$AddExpenseImpl(this.expenseDto);

  @override
  final ExpenseDto expenseDto;

  @override
  String toString() {
    return 'ExpensesEvent.addExpense(expenseDto: $expenseDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            (identical(other.expenseDto, expenseDto) ||
                other.expenseDto == expenseDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      __$$AddExpenseImplCopyWithImpl<_$AddExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
    required TResult Function(ExpenseDto expenseDto) addExpense,
    required TResult Function(int id) deleteExpense,
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) {
    return addExpense(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
    TResult? Function(ExpenseDto expenseDto)? addExpense,
    TResult? Function(int id)? deleteExpense,
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) {
    return addExpense?.call(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    TResult Function(ExpenseDto expenseDto)? addExpense,
    TResult Function(int id)? deleteExpense,
    TResult Function(ExpenseDto expenseDto)? updateExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(expenseDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_UpdateExpense value) updateExpense,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class _AddExpense implements ExpensesEvent {
  const factory _AddExpense(final ExpenseDto expenseDto) = _$AddExpenseImpl;

  ExpenseDto get expenseDto;
  @JsonKey(ignore: true)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExpenseImplCopyWith<$Res> {
  factory _$$DeleteExpenseImplCopyWith(
          _$DeleteExpenseImpl value, $Res Function(_$DeleteExpenseImpl) then) =
      __$$DeleteExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteExpenseImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$DeleteExpenseImpl>
    implements _$$DeleteExpenseImplCopyWith<$Res> {
  __$$DeleteExpenseImplCopyWithImpl(
      _$DeleteExpenseImpl _value, $Res Function(_$DeleteExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteExpenseImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteExpenseImpl implements _DeleteExpense {
  const _$DeleteExpenseImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ExpensesEvent.deleteExpense(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExpenseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      __$$DeleteExpenseImplCopyWithImpl<_$DeleteExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
    required TResult Function(ExpenseDto expenseDto) addExpense,
    required TResult Function(int id) deleteExpense,
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) {
    return deleteExpense(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
    TResult? Function(ExpenseDto expenseDto)? addExpense,
    TResult? Function(int id)? deleteExpense,
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) {
    return deleteExpense?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    TResult Function(ExpenseDto expenseDto)? addExpense,
    TResult Function(int id)? deleteExpense,
    TResult Function(ExpenseDto expenseDto)? updateExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_UpdateExpense value) updateExpense,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class _DeleteExpense implements ExpensesEvent {
  const factory _DeleteExpense(final int id) = _$DeleteExpenseImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExpenseImplCopyWith<$Res> {
  factory _$$UpdateExpenseImplCopyWith(
          _$UpdateExpenseImpl value, $Res Function(_$UpdateExpenseImpl) then) =
      __$$UpdateExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class __$$UpdateExpenseImplCopyWithImpl<$Res>
    extends _$ExpensesEventCopyWithImpl<$Res, _$UpdateExpenseImpl>
    implements _$$UpdateExpenseImplCopyWith<$Res> {
  __$$UpdateExpenseImplCopyWithImpl(
      _$UpdateExpenseImpl _value, $Res Function(_$UpdateExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseDto = null,
  }) {
    return _then(_$UpdateExpenseImpl(
      null == expenseDto
          ? _value.expenseDto
          : expenseDto // ignore: cast_nullable_to_non_nullable
              as ExpenseDto,
    ));
  }
}

/// @nodoc

class _$UpdateExpenseImpl implements _UpdateExpense {
  const _$UpdateExpenseImpl(this.expenseDto);

  @override
  final ExpenseDto expenseDto;

  @override
  String toString() {
    return 'ExpensesEvent.updateExpense(expenseDto: $expenseDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpenseImpl &&
            (identical(other.expenseDto, expenseDto) ||
                other.expenseDto == expenseDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      __$$UpdateExpenseImplCopyWithImpl<_$UpdateExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExpenses,
    required TResult Function(ExpenseDto expenseDto) addExpense,
    required TResult Function(int id) deleteExpense,
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) {
    return updateExpense(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExpenses,
    TResult? Function(ExpenseDto expenseDto)? addExpense,
    TResult? Function(int id)? deleteExpense,
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) {
    return updateExpense?.call(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExpenses,
    TResult Function(ExpenseDto expenseDto)? addExpense,
    TResult Function(int id)? deleteExpense,
    TResult Function(ExpenseDto expenseDto)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(expenseDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExpenses value) getExpenses,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_DeleteExpense value) deleteExpense,
    required TResult Function(_UpdateExpense value) updateExpense,
  }) {
    return updateExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExpenses value)? getExpenses,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_DeleteExpense value)? deleteExpense,
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) {
    return updateExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExpenses value)? getExpenses,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_DeleteExpense value)? deleteExpense,
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(this);
    }
    return orElse();
  }
}

abstract class _UpdateExpense implements ExpensesEvent {
  const factory _UpdateExpense(final ExpenseDto expenseDto) =
      _$UpdateExpenseImpl;

  ExpenseDto get expenseDto;
  @JsonKey(ignore: true)
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpensesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesStateCopyWith<$Res> {
  factory $ExpensesStateCopyWith(
          ExpensesState value, $Res Function(ExpensesState) then) =
      _$ExpensesStateCopyWithImpl<$Res, ExpensesState>;
}

/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res, $Val extends ExpensesState>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommonStateImplCopyWith<$Res> {
  factory _$$CommonStateImplCopyWith(
          _$CommonStateImpl value, $Res Function(_$CommonStateImpl) then) =
      __$$CommonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonState commonState});

  $CommonStateCopyWith<$Res> get commonState;
}

/// @nodoc
class __$$CommonStateImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$CommonStateImpl>
    implements _$$CommonStateImplCopyWith<$Res> {
  __$$CommonStateImplCopyWithImpl(
      _$CommonStateImpl _value, $Res Function(_$CommonStateImpl) _then)
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
    return 'ExpensesState.commonState(commonState: $commonState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateImpl &&
            (identical(other.commonState, commonState) ||
                other.commonState == commonState));
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
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
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
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements ExpensesState {
  const factory _CommonState({required final CommonState commonState}) =
      _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpensesLoadedImplCopyWith<$Res> {
  factory _$$ExpensesLoadedImplCopyWith(_$ExpensesLoadedImpl value,
          $Res Function(_$ExpensesLoadedImpl) then) =
      __$$ExpensesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExpenseDto> expense});
}

/// @nodoc
class __$$ExpensesLoadedImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpensesLoadedImpl>
    implements _$$ExpensesLoadedImplCopyWith<$Res> {
  __$$ExpensesLoadedImplCopyWithImpl(
      _$ExpensesLoadedImpl _value, $Res Function(_$ExpensesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$ExpensesLoadedImpl(
      null == expense
          ? _value._expense
          : expense // ignore: cast_nullable_to_non_nullable
              as List<ExpenseDto>,
    ));
  }
}

/// @nodoc

class _$ExpensesLoadedImpl implements _ExpensesLoaded {
  const _$ExpensesLoadedImpl(final List<ExpenseDto> expense)
      : _expense = expense;

  final List<ExpenseDto> _expense;
  @override
  List<ExpenseDto> get expense {
    if (_expense is EqualUnmodifiableListView) return _expense;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expense);
  }

  @override
  String toString() {
    return 'ExpensesState.expensesLoaded(expense: $expense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpensesLoadedImpl &&
            const DeepCollectionEquality().equals(other._expense, _expense));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_expense));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpensesLoadedImplCopyWith<_$ExpensesLoadedImpl> get copyWith =>
      __$$ExpensesLoadedImplCopyWithImpl<_$ExpensesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) {
    return expensesLoaded(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) {
    return expensesLoaded?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expensesLoaded != null) {
      return expensesLoaded(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) {
    return expensesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) {
    return expensesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expensesLoaded != null) {
      return expensesLoaded(this);
    }
    return orElse();
  }
}

abstract class _ExpensesLoaded implements ExpensesState {
  const factory _ExpensesLoaded(final List<ExpenseDto> expense) =
      _$ExpensesLoadedImpl;

  List<ExpenseDto> get expense;
  @JsonKey(ignore: true)
  _$$ExpensesLoadedImplCopyWith<_$ExpensesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseDeletedImplCopyWith<$Res> {
  factory _$$ExpenseDeletedImplCopyWith(_$ExpenseDeletedImpl value,
          $Res Function(_$ExpenseDeletedImpl) then) =
      __$$ExpenseDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExpenseDeletedImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpenseDeletedImpl>
    implements _$$ExpenseDeletedImplCopyWith<$Res> {
  __$$ExpenseDeletedImplCopyWithImpl(
      _$ExpenseDeletedImpl _value, $Res Function(_$ExpenseDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExpenseDeletedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExpenseDeletedImpl implements _ExpenseDeleted {
  const _$ExpenseDeletedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ExpensesState.expenseDeleted(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseDeletedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseDeletedImplCopyWith<_$ExpenseDeletedImpl> get copyWith =>
      __$$ExpenseDeletedImplCopyWithImpl<_$ExpenseDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) {
    return expenseDeleted(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) {
    return expenseDeleted?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseDeleted != null) {
      return expenseDeleted(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) {
    return expenseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) {
    return expenseDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseDeleted != null) {
      return expenseDeleted(this);
    }
    return orElse();
  }
}

abstract class _ExpenseDeleted implements ExpensesState {
  const factory _ExpenseDeleted(final String message) = _$ExpenseDeletedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExpenseDeletedImplCopyWith<_$ExpenseDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseUpdatedImplCopyWith<$Res> {
  factory _$$ExpenseUpdatedImplCopyWith(_$ExpenseUpdatedImpl value,
          $Res Function(_$ExpenseUpdatedImpl) then) =
      __$$ExpenseUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExpenseUpdatedImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpenseUpdatedImpl>
    implements _$$ExpenseUpdatedImplCopyWith<$Res> {
  __$$ExpenseUpdatedImplCopyWithImpl(
      _$ExpenseUpdatedImpl _value, $Res Function(_$ExpenseUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExpenseUpdatedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExpenseUpdatedImpl implements _ExpenseUpdated {
  const _$ExpenseUpdatedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ExpensesState.expenseUpdated(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseUpdatedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseUpdatedImplCopyWith<_$ExpenseUpdatedImpl> get copyWith =>
      __$$ExpenseUpdatedImplCopyWithImpl<_$ExpenseUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) {
    return expenseUpdated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) {
    return expenseUpdated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseUpdated != null) {
      return expenseUpdated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) {
    return expenseUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) {
    return expenseUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseUpdated != null) {
      return expenseUpdated(this);
    }
    return orElse();
  }
}

abstract class _ExpenseUpdated implements ExpensesState {
  const factory _ExpenseUpdated(final String message) = _$ExpenseUpdatedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExpenseUpdatedImplCopyWith<_$ExpenseUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseAddedImplCopyWith<$Res> {
  factory _$$ExpenseAddedImplCopyWith(
          _$ExpenseAddedImpl value, $Res Function(_$ExpenseAddedImpl) then) =
      __$$ExpenseAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExpenseAddedImplCopyWithImpl<$Res>
    extends _$ExpensesStateCopyWithImpl<$Res, _$ExpenseAddedImpl>
    implements _$$ExpenseAddedImplCopyWith<$Res> {
  __$$ExpenseAddedImplCopyWithImpl(
      _$ExpenseAddedImpl _value, $Res Function(_$ExpenseAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExpenseAddedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExpenseAddedImpl implements _ExpenseAdded {
  const _$ExpenseAddedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ExpensesState.expenseAdded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseAddedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseAddedImplCopyWith<_$ExpenseAddedImpl> get copyWith =>
      __$$ExpenseAddedImplCopyWithImpl<_$ExpenseAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(List<ExpenseDto> expense) expensesLoaded,
    required TResult Function(String message) expenseDeleted,
    required TResult Function(String message) expenseUpdated,
    required TResult Function(String message) expenseAdded,
  }) {
    return expenseAdded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult? Function(String message)? expenseDeleted,
    TResult? Function(String message)? expenseUpdated,
    TResult? Function(String message)? expenseAdded,
  }) {
    return expenseAdded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(List<ExpenseDto> expense)? expensesLoaded,
    TResult Function(String message)? expenseDeleted,
    TResult Function(String message)? expenseUpdated,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseAdded != null) {
      return expenseAdded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpensesLoaded value) expensesLoaded,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
    required TResult Function(_ExpenseAdded value) expenseAdded,
  }) {
    return expenseAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpensesLoaded value)? expensesLoaded,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
    TResult? Function(_ExpenseAdded value)? expenseAdded,
  }) {
    return expenseAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpensesLoaded value)? expensesLoaded,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    TResult Function(_ExpenseAdded value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseAdded != null) {
      return expenseAdded(this);
    }
    return orElse();
  }
}

abstract class _ExpenseAdded implements ExpensesState {
  const factory _ExpenseAdded(final String message) = _$ExpenseAddedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExpenseAddedImplCopyWith<_$ExpenseAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
