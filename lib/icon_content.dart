import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(this.icon,{this.titleText,super.key});
  final IconData icon;
  final String? titleText;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 90),
        SizedBox(height: 10,),
        Text(titleText ?? '',style: ProjectConstants.iconContentFont),
      ],
    );
  }
}
