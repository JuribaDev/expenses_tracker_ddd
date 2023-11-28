// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeleteExpenseEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deleteExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteExpense value) deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteExpense value)? deleteExpense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteExpenseEventCopyWith<DeleteExpenseEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteExpenseEventCopyWith<$Res> {
  factory $DeleteExpenseEventCopyWith(DeleteExpenseEvent value, $Res Function(DeleteExpenseEvent) then) =
      _$DeleteExpenseEventCopyWithImpl<$Res, DeleteExpenseEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteExpenseEventCopyWithImpl<$Res, $Val extends DeleteExpenseEvent>
    implements $DeleteExpenseEventCopyWith<$Res> {
  _$DeleteExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteExpenseImplCopyWith<$Res> implements $DeleteExpenseEventCopyWith<$Res> {
  factory _$$DeleteExpenseImplCopyWith(_$DeleteExpenseImpl value, $Res Function(_$DeleteExpenseImpl) then) =
      __$$DeleteExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteExpenseImplCopyWithImpl<$Res> extends _$DeleteExpenseEventCopyWithImpl<$Res, _$DeleteExpenseImpl>
    implements _$$DeleteExpenseImplCopyWith<$Res> {
  __$$DeleteExpenseImplCopyWithImpl(_$DeleteExpenseImpl _value, $Res Function(_$DeleteExpenseImpl) _then)
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
    return 'DeleteExpenseEvent.deleteExpense(id: $id)';
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
    required TResult Function(int id) deleteExpense,
  }) {
    return deleteExpense(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deleteExpense,
  }) {
    return deleteExpense?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deleteExpense,
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
    required TResult Function(_DeleteExpense value) deleteExpense,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteExpense value)? deleteExpense,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteExpense value)? deleteExpense,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class _DeleteExpense implements DeleteExpenseEvent {
  const factory _DeleteExpense(final int id) = _$DeleteExpenseImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteExpenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommonState value) commonState,
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteExpenseStateCopyWith<$Res> {
  factory $DeleteExpenseStateCopyWith(DeleteExpenseState value, $Res Function(DeleteExpenseState) then) =
      _$DeleteExpenseStateCopyWithImpl<$Res, DeleteExpenseState>;
}

/// @nodoc
class _$DeleteExpenseStateCopyWithImpl<$Res, $Val extends DeleteExpenseState>
    implements $DeleteExpenseStateCopyWith<$Res> {
  _$DeleteExpenseStateCopyWithImpl(this._value, this._then);

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
class __$$CommonStateImplCopyWithImpl<$Res> extends _$DeleteExpenseStateCopyWithImpl<$Res, _$CommonStateImpl>
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
    return 'DeleteExpenseState.commonState(commonState: $commonState)';
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
    required TResult Function(String message) expenseDeleted,
  }) {
    return commonState(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseDeleted,
  }) {
    return commonState?.call(this.commonState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseDeleted,
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
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
  }) {
    return commonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
  }) {
    return commonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    required TResult orElse(),
  }) {
    if (commonState != null) {
      return commonState(this);
    }
    return orElse();
  }
}

abstract class _CommonState implements DeleteExpenseState {
  const factory _CommonState({required final CommonState commonState}) = _$CommonStateImpl;

  CommonState get commonState;
  @JsonKey(ignore: true)
  _$$CommonStateImplCopyWith<_$CommonStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpenseDeletedImplCopyWith<$Res> {
  factory _$$ExpenseDeletedImplCopyWith(_$ExpenseDeletedImpl value, $Res Function(_$ExpenseDeletedImpl) then) =
      __$$ExpenseDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExpenseDeletedImplCopyWithImpl<$Res> extends _$DeleteExpenseStateCopyWithImpl<$Res, _$ExpenseDeletedImpl>
    implements _$$ExpenseDeletedImplCopyWith<$Res> {
  __$$ExpenseDeletedImplCopyWithImpl(_$ExpenseDeletedImpl _value, $Res Function(_$ExpenseDeletedImpl) _then)
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
    return 'DeleteExpenseState.expenseDeleted(message: $message)';
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
      __$$ExpenseDeletedImplCopyWithImpl<_$ExpenseDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonState commonState) commonState,
    required TResult Function(String message) expenseDeleted,
  }) {
    return expenseDeleted(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonState commonState)? commonState,
    TResult? Function(String message)? expenseDeleted,
  }) {
    return expenseDeleted?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonState commonState)? commonState,
    TResult Function(String message)? expenseDeleted,
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
    required TResult Function(_ExpenseDeleted value) expenseDeleted,
  }) {
    return expenseDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommonState value)? commonState,
    TResult? Function(_ExpenseDeleted value)? expenseDeleted,
  }) {
    return expenseDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommonState value)? commonState,
    TResult Function(_ExpenseDeleted value)? expenseDeleted,
    required TResult orElse(),
  }) {
    if (expenseDeleted != null) {
      return expenseDeleted(this);
    }
    return orElse();
  }
}

abstract class _ExpenseDeleted implements DeleteExpenseState {
  const factory _ExpenseDeleted(final String message) = _$ExpenseDeletedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExpenseDeletedImplCopyWith<_$ExpenseDeletedImpl> get copyWith => throw _privateConstructorUsedError;
}
