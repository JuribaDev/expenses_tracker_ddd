import 'package:expenses_tracker_ddd/app.dart';
import 'package:expenses_tracker_ddd/presentation/expense/screen/expense_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(ExpenseScreen), findsOneWidget);
    });
  });
}
