import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/add_expense_bloc/add_expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_test/flutter_test.dart';

class MockMyBloc extends MockBloc<AddExpenseEvent, AddExpenseState> implements AddExpenseBloc {}

void main() {
  group('useBloc Hook', () {
    testWidgets('retrieves the correct instance of the bloc', (WidgetTester tester) async {
      final mockBloc = MockMyBloc();

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<AddExpenseBloc>(
            create: (context) => mockBloc,
            child: const TestWidget(),
          ),
        ),
      );

      expect(find.byType(TestWidget), findsOneWidget);
    });
  });
}

class TestWidget extends HookWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
