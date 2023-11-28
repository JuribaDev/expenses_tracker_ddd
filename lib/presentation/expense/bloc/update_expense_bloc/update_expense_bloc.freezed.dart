// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateExpenseEvent {
  ExpenseDto get expenseDto => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseDto expenseDto)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateExpense value) updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateExpenseEventCopyWith<UpdateExpenseEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateExpenseEventCopyWith<$Res> {
  factory $UpdateExpenseEventCopyWith(UpdateExpenseEvent value, $Res Function(UpdateExpenseEvent) then) =
      _$UpdateExpenseEventCopyWithImpl<$Res, UpdateExpenseEvent>;
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class _$UpdateExpenseEventCopyWithImpl<$Res, $Val extends UpdateExpenseEvent>
    implements $UpdateExpenseEventCopyWith<$Res> {
  _$UpdateExpenseEventCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateExpenseImplCopyWith<$Res> implements $UpdateExpenseEventCopyWith<$Res> {
  factory _$$UpdateExpenseImplCopyWith(_$UpdateExpenseImpl value, $Res Function(_$UpdateExpenseImpl) then) =
      __$$UpdateExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpenseDto expenseDto});
}

/// @nodoc
class __$$UpdateExpenseImplCopyWithImpl<$Res> extends _$UpdateExpenseEventCopyWithImpl<$Res, _$UpdateExpenseImpl>
    implements _$$UpdateExpenseImplCopyWith<$Res> {
  __$$UpdateExpenseImplCopyWithImpl(_$UpdateExpenseImpl _value, $Res Function(_$UpdateExpenseImpl) _then)
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
    return 'UpdateExpenseEvent.updateExpense(expenseDto: $expenseDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpenseImpl &&
            (identical(other.expenseDto, expenseDto) || other.expenseDto == expenseDto));
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
    required TResult Function(ExpenseDto expenseDto) updateExpense,
  }) {
    return updateExpense(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseDto expenseDto)? updateExpense,
  }) {
    return updateExpense?.call(expenseDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_UpdateExpense value) updateExpense,
  }) {
    return updateExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateExpense value)? updateExpense,
  }) {
    return updateExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateExpense value)? updateExpense,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(this);
    }
    return orElse();
  }
}

abstract class _UpdateExpense implements UpdateExpenseEvent {
  const factory _UpdateExpense(final ExpenseDto expenseDto) = _$UpdateExpenseImpl;

  @override
  ExpenseDto get expenseDto;
  @override
  @JsonKey(ignore: true)
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateExpenseStateCopyWith<$Res> {
  factory $UpdateExpenseStateCopyWith(UpdateExpenseState value, $Res Function(UpdateExpenseState) then) =
      _$UpdateExpenseStateCopyWithImpl<$Res, UpdateExpenseState>;
}

/// @nodoc
class _$UpdateExpenseStateCopyWithImpl<$Res, $Val extends UpdateExpenseState>
    implements $UpdateExpenseStateCopyWith<$Res> {
  _$UpdateExpenseStateCopyWithImpl(this._value, this._then);

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
class __$$CommonStateImplCopyWithImpl<$Res> extends _$UpdateExpenseStateCopyWithImpl<$Res, _$CommonStateImpl>
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
    return 'UpdateExpenseState.commonState(commonState: $commonState)';
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
    required TResult Function(String message) expenseUpdated,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseUpdated,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseUpdated,
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
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements UpdateExpenseState {
  const factory _CommonState({required final CommonState commonState}) = _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseUpdatedImplCopyWith<$Res> {
  factory _$$ExpenseUpdatedImplCopyWith(_$ExpenseUpdatedImpl value, $Res Function(_$ExpenseUpdatedImpl) then) =
      __$$ExpenseUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExpenseUpdatedImplCopyWithImpl<$Res> extends _$UpdateExpenseStateCopyWithImpl<$Res, _$ExpenseUpdatedImpl>
    implements _$$ExpenseUpdatedImplCopyWith<$Res> {
  __$$ExpenseUpdatedImplCopyWithImpl(_$ExpenseUpdatedImpl _value, $Res Function(_$ExpenseUpdatedImpl) _then)
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
    return 'UpdateExpenseState.expenseUpdated(message: $message)';
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
      __$$ExpenseUpdatedImplCopyWithImpl<_$ExpenseUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseUpdated,
  }) {
    return expenseUpdated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseUpdated,
  }) {
    return expenseUpdated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseUpdated,
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
    required TResult Function(_ExpenseUpdated value) expenseUpdated,
  }) {
    return expenseUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseUpdated value)? expenseUpdated,
  }) {
    return expenseUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseUpdated value)? expenseUpdated,
    required TResult orElse(),
  }) {
    if (expenseUpdated != null) {
      return expenseUpdated(this);
    }
    return orElse();
  }
}

abstract class _ExpenseUpdated implements UpdateExpenseState {
  const factory _ExpenseUpdated(final String message) = _$ExpenseUpdatedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExpenseUpdatedImplCopyWith<_$ExpenseUpdatedImpl> get copyWith => throw _privateConstructorUsedError;
}
