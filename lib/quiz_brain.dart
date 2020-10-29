import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('5+5 = 10', true),
    Question('10+2 = 15', false),
    Question('I Am Supriya ', true),
    Question('50+10 = 60', true),
    Question('1+1 = 2', true),
    Question('Earth is Beautiful', true),
    Question('Tiger is king', false),
    Question('Lion is king', true),
    Question('9+1 = 11',false),
    ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
