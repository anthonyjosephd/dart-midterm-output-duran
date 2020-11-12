import 'dart:io';
import 'dart:math';
import 'package:emojis/emojis.dart'; // to use Emoji collection
import 'package:emojis/emoji.dart';

int wins = 0;
int loss = 0;
int draws = 0;

enum Move { bato, papel, gunting }
void main() {


  final rng = Random();
  while (true) {
    stdout.write('Bato, Papel or Gunting?');
    final input = stdin.readLineSync();

    if (input == 'Bato' || input == 'BATO'|| input == 'bato'|| input == 'Papel' || input == 'PAPEL'|| input == 'papel'|| input == 'Gunting'|| input == 'GUNTING'|| input == 'gunting') {
      var playerMove;
      if (input == 'Bato' || input == 'BATO'|| input == 'bato') {
        playerMove = '${Emojis.oncomingFist}';
      } else if (input == 'Papel' || input == 'PAPEL'|| input == 'papel') {
        playerMove = '${Emojis.raisedHand}';
      } else {
        playerMove = '${Emojis.victoryHand}';
      }


      var list = ['${Emojis.raisedHand}','${Emojis.victoryHand}','${Emojis.oncomingFist}'];

      var aiMove = (list..shuffle()).first;
      print('You played: $playerMove');
      print('AI played: $aiMove');

      if (playerMove == aiMove) {
        draws++;
        print("Patas lang!");
      } else if (playerMove == '${Emojis.oncomingFist}' && aiMove == '${Emojis.victoryHand}' ||
          playerMove == '${Emojis.raisedHand}' && aiMove == '${Emojis.oncomingFist}' ||
          playerMove == '${Emojis.victoryHand}' && aiMove == '${Emojis.raisedHand}') {

        wins++;
        print("Panalo Ka! :)");
      } else {

        loss++;
        print("Talo Ka! :(");

      }
      print('iskor: Wins: $wins Loss: $loss Draws: $draws');
    } else if (input == 'quit') {
      break;

    }

        }

      }



