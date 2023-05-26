import 'package:flutter/cupertino.dart';
import 'package:quiz_game/main.dart';
import 'question.dart';
import 'score_keeper.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int _rightQuestions = 0;
  ScoreKeeper scoreKeeper = ScoreKeeper();
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true)
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  int getQuestionBankLength() {
    return _questionBank.length;
  }

  bool getAnswer(int questionNumber){
    return _questionBank[questionNumber].questionAnswer;
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  int getAndIncrementNumber(){
    return _questionNumber < getQuestionBankLength() - 1 ? _questionNumber++ : _questionNumber = 1;
  }

  void checkAnswer(bool answer){
    if(getAnswer(getAndIncrementNumber()) == answer)  {
      scoreKeeper.rightAnswer();
      _rightQuestions++;
    } else {
      scoreKeeper.wrongAnswer();
    }
  }

  List<Widget> getScoreList(){
    return scoreKeeper.getScoreList();
  }

  void isFinished(BuildContext context){
    if(scoreKeeper.getScoreLength() >= quizBrain.getQuestionNumber()){
      scoreKeeper.clearScoreList();
      Alert(
          style: AlertStyle(
            constraints: BoxConstraints(minHeight: 200),
          ),
          context: context,
          title: "Congratulations",
          desc: countOfQuestions()).show();
      _rightQuestions = 0;
    }
  }

  String countOfQuestions(){
    return 'You answered right $_rightQuestions questions';
  }

}