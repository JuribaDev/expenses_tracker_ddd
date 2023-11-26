import 'package:expenses_tracker_ddd/domain/core/entity.dart';
import 'package:flutter_test/flutter_test.dart';

class TestEntity extends Entity {
  const TestEntity(super.id);
}

void main() {
  group('Entity', () {
    test('Should contain the correct properties', () {
      const id = 'test_id';
      const entity = TestEntity(id);

      expect(entity.id, id);
    });

    test('Props should contain all fields', () {
      const id = 'test_id';
      const entity = TestEntity(id);

      expect(entity.props, containsAll([id]));
    });
  });
}
