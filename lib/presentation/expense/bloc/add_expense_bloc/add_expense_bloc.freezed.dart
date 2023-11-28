// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddExpenseEvent {
  ExpenseDto get expenseDto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseDto expenseDto) addExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseDto expenseDto)? addExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseDto expenseDto)? addExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddExpense value) addExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExpense value)? addExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExpense value)? addExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddExpenseEventCopyWith<AddExpenseEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseEventCopyWith(AddExpenseEvent value, $Res Function(AddExpenseEvent) then) =
      _$AddExpenseEventCopyWithImpl<$Res, AddExpenseEvent>;
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class _$AddExpenseEventCopyWithImpl<$Res, $Val extends AddExpenseEvent> implements $AddExpenseEventCopyWith<$Res> {
  _$AddExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseDto = null,
  }) {
    return _then(_value.copyWith(
      expenseDto: null == expenseDto
          ? _value.expenseDto
          : expenseDto // ignore: cast_nullable_to_non_nullable
              as ExpenseDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(_$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res> extends _$AddExpenseEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(_$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then) : super(_value, _then);

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
    return 'AddExpenseEvent.addExpense(expenseDto: $expenseDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            (identical(other.expenseDto, expenseDto) || other.expenseDto == expenseDto));
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
    required TResult Function(ExpenseDto expenseDto) addExpense,
  }) {
    return addExpense(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseDto expenseDto)? addExpense,
  }) {
    return addExpense?.call(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseDto expenseDto)? addExpense,
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
    required TResult Function(_AddExpense value) addExpense,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddExpense value)? addExpense,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddExpense value)? addExpense,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class _AddExpense implements AddExpenseEvent {
  const factory _AddExpense(final ExpenseDto expenseDto) = _$AddExpenseImpl;

  @override
  ExpenseDto get expenseDto;
  @override
  @JsonKey(ignore: true)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_Success value) expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_Success value)? expenseAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_Success value)? expenseAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseStateCopyWith(AddExpenseState value, $Res Function(AddExpenseState) then) =
      _$AddExpenseStateCopyWithImpl<$Res, AddExpenseState>;
}

/// @nodoc
class _$AddExpenseStateCopyWithImpl<$Res, $Val extends AddExpenseState> implements $AddExpenseStateCopyWith<$Res> {
  _$AddExpenseStateCopyWithImpl(this._value, this._then);

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
class __$$CommonStateImplCopyWithImpl<$Res> extends _$AddExpenseStateCopyWithImpl<$Res, _$CommonStateImpl>
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
    return 'AddExpenseState.commonState(commonState: $commonState)';
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
    required TResult Function(String message) expenseAdded,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseAdded,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
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
    required TResult Function(_Success value) expenseAdded,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_Success value)? expenseAdded,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_Success value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements AddExpenseState {
  const factory _CommonState({required final CommonState commonState}) = _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$AddExpenseStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddExpenseState.expenseAdded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseAdded,
  }) {
    return expenseAdded(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseAdded,
  }) {
    return expenseAdded?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
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
    required TResult Function(_Success value) expenseAdded,
  }) {
    return expenseAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_Success value)? expenseAdded,
  }) {
    return expenseAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_Success value)? expenseAdded,
    required TResult orElse(),
  }) {
    if (expenseAdded != null) {
      return expenseAdded(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddExpenseState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;
}
