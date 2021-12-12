import 'dart:io';
import 'dart:math';
void main() {
  var i = 0;
  var r = Random();
  var n = true;
  var m = 0;
  var t=null;
  var answer = r.nextInt(100);
  while (n) {
    stdout.write('Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      stdout.write(answer);
      m++;
      print(" is CORRECT ❤ ,total guesses: $m");
      n = false;
    }else if(guess == null){
      n=true;
    }
    else if (guess ! < answer) {
      stdout.write(guess);
      print(' is TOO LOW! ▼: ');
      n = true;
      m++;
    }
    else if (guess ! > answer) {
      stdout.write(guess);
      print(' is TOO HIGH! ▲: ');
      n = true;
      m++;
    }else  {
      n=false;
    }
  }
}
