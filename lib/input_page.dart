import 'package:vke_hesaplayici/bottom_calculate_component.dart';
import 'package:vke_hesaplayici/calculate_bmi.dart';
import 'package:vke_hesaplayici/results_page.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'number_increase_decrase_component.dart';
// ignore_for_file: prefer_const_constructors

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int selectedHeight = 120;
  int selectedWeight = 60;
  int selectedAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'BMI CALCULATOR',
      )),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? ProjectConstants.activeCardColor
                        : ProjectConstants.inactiveCardColor,
                    child: const IconContent(
                      Icons.female,
                      titleText: 'FEMALE',
                    )),
              ),
              Expanded(
                child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? ProjectConstants.activeCardColor
                        : ProjectConstants.inactiveCardColor,
                    child: const IconContent(
                      Icons.male,
                      titleText: 'MALE',
                    )),
              )
            ],
          )),
          Expanded(
              child: ReusableCard(
            color: ProjectConstants.inactiveCardColor,
            child: FittedBox(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style:
                        ProjectConstants.iconContentFont,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$selectedHeight',
                        style: ProjectConstants.numberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: ProjectConstants.numberTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        trackHeight: 2,
                        activeTrackColor: Color(0xFFEB1555),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x58EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 15),
                        inactiveTrackColor: Color(0xFF8D8E98)),
                    child: Slider(
                      value: selectedHeight.toDouble(),
                      onChanged: (x) {
                        setState(() {
                          selectedHeight = x.round();
                        });
                      },
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
            ),
          )),
          Expanded(
            flex: 0,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReusableCard(
                  color: ProjectConstants.inactiveCardColor,
                  child: FittedBox(
                    child: IncreaseDecraseComponent(
                      selectedWeight,
                      'WEIGHT',
                      onIncrease: () {
                        setState(() {
                          selectedWeight += selectedWeight < 200 ? 1 : 0;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          selectedWeight += selectedWeight > 20 ? -1 : 0;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: ProjectConstants.inactiveCardColor,
                  child: FittedBox(
                    child: IncreaseDecraseComponent(
                      selectedAge,
                      'AGE',
                      onIncrease: () {
                        setState(() {
                          selectedAge += selectedAge < 120 ? 1 : 0;
                        });
                      },
                      onDecrease: () {
                        setState(() {
                          selectedAge += selectedAge > 1 ? -1 : 0;
                        });
                      },
                    ),
                  ),
                )
              )
            ],
          )),
          GestureDetector(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(brain: CalculateBMI(selectedHeight,selectedWeight)),));
            },
            child: BottomCalculateComponent(innerText:'CALCULATE')
          )
        ],
      ),
    );
  }
}
