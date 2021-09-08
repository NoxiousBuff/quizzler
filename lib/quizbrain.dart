import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Does Dog have a tail ?', a: true),
    Question(q: 'Is Greenland Green ?', a: false),
    Question(q: 'Is Planet Earth is a Blue Planet Now ?', a: true),
    Question(q: 'Is my Computer Working decent ?', a: false),
    Question(q: 'Is my computer working great ?', a: true),
    Question(q: 'Is E and B are same in physics ?', a: false),
    Question(
        q: 'If true is false and false is true then this statement is ?',
        a: true),
    Question(q: 'can  1 + 1 be 10 like ever ?', a: true),
    Question(q: 'Is X  is a a type of quantum gate ?', a: true),
    Question(q: 'Verify Statement: Karan is an idiot?', a: true),
  ];

  void getQuestionNumber() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
    if (_questionNumber == _questionBank.length) {
      _questionNumber = 0;
    }

    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAns() {
    return _questionBank[_questionNumber].questionAns;
  }
}
