// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ProjectConstants{
  static const numberTextStyle = TextStyle(fontSize: 30,fontFamily: 'Roboto',fontWeight: FontWeight.w800,color: Colors.white);
  static const double iconCardFontSize = 10;
  static const buttonVariableColor = Color(0xFFADAEB8);
  static const cardTextColor = Color(0xFF8D8E98);
  static const iconContentFont = TextStyle(fontSize: iconCardFontSize,fontFamily: 'Roboto',fontWeight: FontWeight.w500,color: cardTextColor);
  static const activeCardColor = Color(0xFF4D4E73);
  static const inactiveCardColor = Color(0xFF141735);
  static const bottomContainerColor = Color(0xFFC11240);
}
enum Gender { male, female }
