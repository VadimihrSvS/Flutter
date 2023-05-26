
import 'package:flutter/material.dart';
import 'quiz_brain.dart';

class ScoreKeeper {
  List<Widget> _scoreList = [];

  void rightAnswer() {
    _scoreList.add(const Icon(Icons.check,
        color: Colors.green));
  }

  void wrongAnswer(){
    _scoreList.add(const Icon(Icons.close,
        color: Colors.red));
  }

  List<Widget> getScoreList(){
    return _scoreList;
  }

  int getScoreLength(){
    return _scoreList.length;
  }

  void clearScoreList(){
    _scoreList.clear();
  }

}



