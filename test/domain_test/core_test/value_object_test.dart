import 'package:expenses_tracker_ddd/domain/core/value_object.dart';
import 'package:flutter_test/flutter_test.dart';

class TestValueObject extends ValueObject<String> {
  const TestValueObject(super.value);
}

void main() {
  group('ValueObject', () {
    test('Should contain the correct value', () {
      const testValue = 'Test Value';
      const valueObject = TestValueObject(testValue);

      expect(valueObject.value, testValue);
    });

    test('Props should contain the value field', () {
      const testValue = 'Test Value';
      const valueObject = TestValueObject(testValue);

      expect(valueObject.props, contains(testValue));
    });
  });
}
