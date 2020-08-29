class IntToRomanConverter {
  final Map<String, int> numerals = {
    'M': 1000,
    'CM': 900,
    'D': 500,
    'CD': 400,
    'C': 100,
    'XC': 90,
    'L': 50,
    'XL': 40,
    'X': 10,
    'IX': 9,
    'V': 5,
    'IV': 4,
    'I': 1,
  };

  int _amountToConvert;
  String _roman = '';

  IntToRomanConverter(this._amountToConvert) {
    _checkValidRange();
  }

  void _checkValidRange() {
    if (_amountToConvert > 3999) {
      throw Exception('No numbers greater than 3999 in the Roman system ¯\\_(ツ)_/¯');
    } else if (_amountToConvert == 0) {
      throw Exception('No zero in the Roman system ¯\\_(ツ)_/¯');
    } else if (_amountToConvert < 0) {
      throw Exception('No negatives in the Roman system ¯\\_(ツ)_/¯');
    }
  }

  String convert() {
    for (int i = 0; i < numerals.length; i++) {
      _convertPerFraction(numerals.keys.elementAt(i));
    }
    return _roman;
  }

  void _convertPerFraction(String numeral) {
    int fraction = numerals[numeral];
    _roman += numeral * (_amountToConvert / fraction).floor();
    _amountToConvert %= fraction;
  }
}
