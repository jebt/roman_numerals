class IntToRomanConverter {
  Map<String, int> numerals = {
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

  int _remaining;
  String _roman = '';

  IntToRomanConverter(this._remaining);

  String convert() {
    checkIfInputIsInCorrectRange();
    for (int i = 0; i < numerals.length; i++) {
      convertJust(numerals.keys.elementAt(i));
    }
    return _roman;
  }

  void checkIfInputIsInCorrectRange() {
    if (_remaining > 3999) {
      throw Exception('Sorry, there are no numbers greater than 3999 in the Roman system ¯\\_(ツ)_/¯');
    } else if (_remaining == 0) {
      throw Exception('Sorry, there is no zero in the Roman system ¯\\_(ツ)_/¯');
    } else if (_remaining < 0) {
      throw Exception('Sorry, there are no negatives in the Roman system ¯\\_(ツ)_/¯');
    }
  }

  void convertJust(String numeral) {
    int fraction = numerals[numeral];
    int times = (_remaining / fraction).floor();
    _roman += numeral * times;
    _remaining -= fraction * times;
  }
}
