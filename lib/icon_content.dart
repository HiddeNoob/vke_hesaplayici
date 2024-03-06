import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(this.icon, {this.titleText, super.key});
  final IconData icon;
  final String? titleText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: FittedBox(child: Icon(icon))),
        Expanded(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(titleText ?? '',
                  style: ProjectConstants.iconContentFont),
            ),
          ),
        ),
      ],
    );
  }
}
