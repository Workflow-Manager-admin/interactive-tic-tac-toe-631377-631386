import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('App generation message displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // This check is no longer relevant, as 'tic_tac_toe_frontend App is being generated...'
    // was replaced with the new app. Check something that's in the new app body.
    expect(find.text('Tic Tac Toe'), findsOneWidget);
    // Board and player status will always be present
    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsOneWidget);
  });
}
