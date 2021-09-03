import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:quiz/question.dart';

class QuizEngine {
  List<Widget> scoreKeeper = [];
  int questionNumber = 0;

  var point = 0.0;

  final List<Question> _questionBank = [
    Question('Alguns gatos são alérgicos a humanos', true),
    Question(
        'É possível fazer com que uma vaca suba escadas, mas não descê-las.',
        false),
    Question(
        'Aproximadamente um quarto dos ossos humanos estão nos pés.', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('O nome de solteira da mãe de Buzz Aldrin era \"Moon\".', true),
    Question('É ilegal urinar no oceano, em Portugal.', true),
    Question(
        'Nenhum pedaço quadrado de papel pode ser dobrado mais do que 7 vezes.',
        false),
    Question(
        'Em Londres, se você morrer no Parlamento, você tem direito a um funeral de estado, porque o prédio é considerado um local sagrado.',
        true),
    Question(
        'O som mais forte produzido por qualquer animal é de 188dB. Esse animal é o elefante africano.',
        false),
    Question(
        'A área total dos dois pulmões de um humano é de aproximadamente 70 metros quadrados.',
        true),
    Question('Google foi chamado, originalmente de \"Backrub\".', true),
  ];

  Question getQuestionByNumber(int number) {
    return this._questionBank[number];
  }

  void validate() {
    bool correctAnswer = getQuestionByNumber(questionNumber).answer;
    var icon = Icons.close;
    var color = Colors.red;

    var totalQuestionsNumber = _questionBank.length;
    if (questionNumber < totalQuestionsNumber - 1) {
      if (correctAnswer) {
        icon = Icons.check;
        color = Colors.green;
        point++;
      }

      scoreKeeper.add(
        Icon(
          icon,
          color: color,
        ),
      );
      this.questionNumber++;
    } else {
      getQuestionByNumber(questionNumber).text =
          'Acabaram as perguntas, acertos: ' + point.toString();
    }
  }
}
