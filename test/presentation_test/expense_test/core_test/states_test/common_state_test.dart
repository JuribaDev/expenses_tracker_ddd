import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommonState', () {
    test('initial state supports value comparisons', () {
      expect(
        const CommonState.initial(),
        const CommonState.initial(),
      );
    });

    test('loading state supports value comparisons', () {
      expect(
        const CommonState.loading(),
        const CommonState.loading(),
      );
    });

    test('error state supports value comparisons', () {
      const errorMessage = 'An error occurred';

      expect(
        const CommonState.error(errorMessage: errorMessage),
        const CommonState.error(errorMessage: errorMessage),
      );

      const differentErrorMessage = 'A different error occurred';
      expect(
        const CommonState.error(errorMessage: errorMessage),
        isNot(const CommonState.error(errorMessage: differentErrorMessage)),
      );
    });
  });
}
