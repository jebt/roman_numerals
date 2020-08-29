import 'dart:io';
import 'package:roman_numerals/int_to_roman_converter.dart';

void main(List<String> arguments) {
  findLongestRomanNumerals();
  qA();
}

void findLongestRomanNumerals() {
  int longestUntilNow = 0;
  for (int i = 1; i < 4000; i++) {
    String roman = IntToRomanConverter(i).convert();
    if (roman.length >= longestUntilNow) {
      longestUntilNow = roman.length;
      print('$longestUntilNow: $roman ($i)');
    }
  }
}

void qA() {
  int number;
  IntToRomanConverter converter;

  while (converter == null) {
    try {
      print('Enter a number between 1 and 3999!');
      String input = stdin.readLineSync();
      number = int.parse(input.trim());
      converter = IntToRomanConverter(number);
    } catch (e) {
      print(e.message);
    }
  }

  String roman = converter.convert();
  print('The Roman equivalent of $number is $roman. The more you know...');
}
