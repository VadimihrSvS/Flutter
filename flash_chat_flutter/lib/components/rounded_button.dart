import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {

  final void Function()? onTap;
  final String title;
  final Color color;

  const RoundedButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );

  }



}