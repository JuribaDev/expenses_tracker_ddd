import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/core/entity.dart';
import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/amount.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/date.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/title.dart';

class ExpenseEntity extends Entity {
  const ExpenseEntity(super.id, this.title, this.amount, this.date);

  const ExpenseEntity._(super.id, this.title, this.amount, this.date);

  final Title title;
  final Amount amount;
  final Date date;

  static EitherValidationExceptionOrNull<ExpenseEntity> create(
    int? id,
    String titleVal,
    String amountVal,
    DateTime dateVal,
  ) {
    final titleEither = Title.create(titleVal);
    final amountEither = Amount.create(amountVal);
    final dateEither = Date.create(dateVal);

    if (titleEither.isLeft || amountEither.isLeft || dateEither.isLeft) {
      return Left(ValidationException('Invalid expense data'));
    }

    return Right(
      ExpenseEntity._(
        id,
        titleEither.right,
        amountEither.right,
        dateEither.right,
      ),
    );
  }

  @override
  List<Object?> get props => [id, title, amount, date];
}
