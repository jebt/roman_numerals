import 'package:roman_numerals/int_to_roman_converter.dart';
import 'package:test/test.dart';

void main() {
  test('0 as input', () {
    expect(() => IntToRomanConverter(0).convert(),
        throwsA(predicate((e) => e.message == 'No zero in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('negative input', () {
    expect(() => IntToRomanConverter(-69).convert(),
        throwsA(predicate((e) => e.message == 'No negatives in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('greater than 3999 input', () {
    expect(() => IntToRomanConverter(5437).convert(),
        throwsA(predicate((e) => e.message == 'No numbers greater than 3999 in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('A bunch of numbers generated with random.org', () {
    List<int> toConvert = [1337, 3115, 1171, 2744, 1291, 3500, 485, 378, 10, 70, 9];
    List<String> converted = [];
    for (int i = 0; i < toConvert.length; i++) {
      converted.add(intToRoman(toConvert[i]));
    }
    expect(converted, [
      'MCCCXXXVII', // 1337
      'MMMCXV', //     3115
      'MCLXXI', //     1171
      'MMDCCXLIV', //  2744
      'MCCXCI', //     1291
      'MMMD', //       3500
      'CDLXXXV', //     485
      'CCCLXXVIII', //  378
      'X', //            10
      'LXX', //          70
      'IX', //            9
    ]);
  });
}
