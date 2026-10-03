import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello/game_logic.dart';

void main(){
  group('Game Logic Test', (){
    test('Player 1 Win!',(){
      final result = showResult('paper', 'rock');
      expect(result, 'Player 1 Win!');
    });

    test('Player 2 Win!', (){
      final result = showResult('scissor', 'rock');
      expect(result, 'Player 2 Win!');
    });

    test('Tie', (){
      final result = showResult('rock', 'rock');
      expect(result, 'Tie!');
    });
  });
}