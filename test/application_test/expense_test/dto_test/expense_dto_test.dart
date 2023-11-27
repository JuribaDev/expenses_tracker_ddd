// ignore_for_file: prefer_constructors_over_static_methods

import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/date.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpenseDTO', () {
    // Mock data for ExpenseEntity
    final expenseEntity = ExpenseEntity(
      1,
      const Title('Groceries'),
      const Amount(15.50),
      Date(DateTime(2021, 12, 25)),
    );

    test('fromEntity should correctly convert ExpenseEntity to ExpenseDTO', () {
      final dto = ExpenseDTO.fromEntity(expenseEntity);

      expect(dto.id, expenseEntity.id);
      expect(dto.title, expenseEntity.title.value);
      expect(dto.amount, expenseEntity.amount.value.toString());
      expect(dto.date, expenseEntity.date.value);
    });

    test('fromListEntity should correctly convert a list of ExpenseEntities to a list of ExpenseDTOs', () {
      final entities = [expenseEntity];
      final dtos = ExpenseDTO.fromListEntity(entities);

      expect(dtos.length, entities.length);
      expect(dtos.first.id, entities.first.id);
      expect(dtos.first.title, entities.first.title.value);
      expect(dtos.first.amount, entities.first.amount.value.toString());
      expect(dtos.first.date, entities.first.date.value);
    });

    test('fromStreamOfEntity should correctly convert a Stream of ExpenseEntities to a Stream of ExpenseDTOs',
        () async {
      final entityStream = Stream.fromIterable([
        [expenseEntity],
      ]);
      final dtoStream = ExpenseDTO.fromStreamOfEntity(entityStream);

      expect(await dtoStream.first, isA<List<ExpenseDTO>>());
      final dtos = await dtoStream.first;
      expect(dtos.first.id, expenseEntity.id);
      expect(dtos.first.title, expenseEntity.title.value);
      expect(dtos.first.amount, expenseEntity.amount.value.toString());
      expect(dtos.first.date, expenseEntity.date.value);
    });
  });
}
