import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hello/main.dart' as app;
import 'package:flutter/material.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('End-to-End Test', (){
    testWidgets('Test application', (WidgetTester tester)async{
      app.main();

      // Player 1 choose rock
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('p1_rock_btn')));
      await tester.pump();

      // Player 1 submit 
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('p1_btn')));
      await tester.pump();

       // Player 2 choose scissor
      await tester.tap(find.byKey(const Key('p2_sciss_btn')));
      await tester.pump();

      // Player 2 submit 
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('p2_btn')));
      await tester.pump();

      // Tap Finish Button
      await tester.tap(find.byKey(const Key('finish_btn')));
      await tester.pump(); // อัปเดต UI

      // Show Result
      expect(find.text('Player 1 Win!'), findsOneWidget);
    });
  });
}