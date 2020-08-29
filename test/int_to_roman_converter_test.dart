import 'package:roman_numerals/int_to_roman_converter.dart';
import 'package:test/test.dart';

void main() {
  test('0 as input', () {
    expect(() => IntToRomanConverter(0).convert(),
        throwsA(predicate((e) => e.message == 'Sorry, there is no zero in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('negative input', () {
    expect(() => IntToRomanConverter(-69).convert(),
        throwsA(predicate((e) => e.message == 'Sorry, there are no negatives in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('greater than 3999 input', () {
    expect(
        () => IntToRomanConverter(5437).convert(),
        throwsA(predicate(
            (e) => e.message == 'Sorry, there are no numbers greater than 3999 in the Roman system ¯\\_(ツ)_/¯')));
  });

  test('A bunch of numbers I mostly got from random.org', () {
    expect([
      IntToRomanConverter(1337).convert(),
      IntToRomanConverter(3115).convert(),
      IntToRomanConverter(1326).convert(),
      IntToRomanConverter(1171).convert(),
      IntToRomanConverter(1394).convert(),
      IntToRomanConverter(2744).convert(),
      IntToRomanConverter(1291).convert(),
      IntToRomanConverter(2191).convert(),
      IntToRomanConverter(3500).convert(),
      IntToRomanConverter(485).convert(), //485
      IntToRomanConverter(378).convert(), //378
      IntToRomanConverter(10).convert(), //10
      IntToRomanConverter(70).convert(), //70
      IntToRomanConverter(9).convert(), //9
    ], [
      'MCCCXXXVII',
      'MMMCXV',
      'MCCCXXVI',
      'MCLXXI',
      'MCCCXCIV',
      'MMDCCXLIV',
      'MCCXCI',
      'MMCXCI',
      'MMMD',
      'CDLXXXV',
      'CCCLXXVIII',
      'X',
      'LXX',
      'IX',
    ]);
  });
}
