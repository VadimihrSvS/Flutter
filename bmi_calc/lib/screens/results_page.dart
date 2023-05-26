import 'package:bmi_calc/components/bottom_button.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:bmi_calc/video_player_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key, required this.BMIResult, required this.resultText, required this.interpretation}) : super(key: key);

  final String BMIResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
            child: Text('Your Result',
            style: kTitleTextStyle),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultText.toUpperCase(),
                style: kResultTextStyle),
                Text(BMIResult,
                  style: kBMITextStyle,
                ),
                Text(interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            )),
          ),
          (double.parse(BMIResult) >= 25) ? const Expanded(child: VideoPlayerScreen()): Container(),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonText: 'RE-CALCULATE')
        ],
      )
    );
  }
}
