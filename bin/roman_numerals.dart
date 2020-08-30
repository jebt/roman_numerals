import 'dart:io';
import 'package:roman_numerals/int_to_roman_converter.dart';

void main(List<String> arguments) {
  findLongestRomanNumerals();
  qA();
}

void findLongestRomanNumerals() {
  int longestSoFar = 0;
  for (int i = 1; i < 4000; i++) {
    String roman = intToRoman(i);
    if (roman.length >= longestSoFar) {
      longestSoFar = roman.length;
      print('$longestSoFar: $roman ($i)');
    }
  }
}

void qA() {
  int number;
  String roman;

  while (roman == null) {
    try {
      print('Enter a number between 1 and 3999!');
      String input = stdin.readLineSync();
      number = int.parse(input.trim());
      roman = intToRoman(number);
    } catch (e) {
      print(e.message);
    }
  }
  print('The Roman equivalent for $number is $roman. The more you know...');
}
