import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calc/screens/results_page.dart';


class BottomButton extends StatelessWidget {

  final void Function() onTap;
  final String buttonText;

  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonText
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonText,
            style: kLargeButtonTextStyle)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0), width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
