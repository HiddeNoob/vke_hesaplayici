import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vke_hesaplayici/bottom_calculate_component.dart';
import 'package:vke_hesaplayici/calculate_bmi.dart';
import 'package:vke_hesaplayici/reusable_card.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
  late final String _resultSummaryTitle;
  late final String _resultSummaryText;
  final CalculateBMI brain;
  ResultsPage({super.key,required this.brain}){
    _resultSummaryText = brain.getInterpretation;
    _resultSummaryTitle = brain.getResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('RESULTS',style: ProjectConstants.numberTextStyle,),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReusableCard(
                color: ProjectConstants.activeCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(_resultSummaryTitle,style: ProjectConstants.numberTextStyle.copyWith(color: brain.getBMIColor)),
                    Text('Your BMI: ${brain.getUserBMI.toStringAsFixed(2)}',style: ProjectConstants.numberTextStyle,),
                    Text('Normal BMI range:\n18,5 - 25 kg/m2',style: ProjectConstants.iconContentFont.copyWith(fontSize: 20),textAlign: TextAlign.center),
                    Text(_resultSummaryText,style: ProjectConstants.numberTextStyle.copyWith(fontSize: 16),textAlign: TextAlign.center),
                  ],
                )
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: BottomCalculateComponent(innerText: 'RE-CALCULATE')
            ),
          )
        ],
      ),
    );
  }
}
