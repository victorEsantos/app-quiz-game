class Question {
  String _text;
  bool _answer;

  Question(this._text, this._answer);

  bool get answer => _answer;

  set answer(bool value) {
    _answer = value;
  }

  String get text => _text;

  set text(String value) {
    _text = value;
  }
}
