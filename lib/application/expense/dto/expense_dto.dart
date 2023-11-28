// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';
import 'package:expenses_tracker_ddd/domain/expense/entity/expense_entity.dart';

class ExpenseDto extends Equatable {
  const ExpenseDto({
    required this.title,
    required this.amount,
    required this.date,
    this.id,
  });

  final int? id;
  final String title;
  final String amount;
  final DateTime date;

  @override
  List<Object?> get props => [id, title, amount, date];

  static List<ExpenseDto> fromListEntity(List<ExpenseEntity> e) {
    return e.map(fromEntity).toList();
  }

  static ExpenseDto fromEntity(ExpenseEntity e) {
    return ExpenseDto(
      id: e.id,
      title: e.title.value,
      amount: e.amount.value.toString(),
      date: e.date.value,
    );
  }

  static Stream<List<ExpenseDto>> fromStreamOfEntity(Stream<List<ExpenseEntity>> e) {
    return e.map(fromListEntity);
  }
}
