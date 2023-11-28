// generic_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

@freezed
class CommonState with _$CommonState {
  const factory CommonState.initial() = _Initial;

  const factory CommonState.loading() = _Loading;

  const factory CommonState.error({required String errorMessage}) = _Error;
}
