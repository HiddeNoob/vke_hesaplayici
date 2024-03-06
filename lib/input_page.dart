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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style:
                      ProjectConstants.iconContentFont.copyWith(fontSize: 20),
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
                      style: ProjectConstants.numberTextStyle
                          .copyWith(fontSize: 20),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      activeTrackColor: Color(0xFFEB1555),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x58EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
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
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ReusableCard(
                  color: ProjectConstants.inactiveCardColor,
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
              Expanded(
                child: ReusableCard(
                  color: ProjectConstants.inactiveCardColor,
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
                )
              )
            ],
          )),
          GestureDetector(
            onTap: null,
            child: Container(
              height: 70,
              width: double.infinity,
              color: ProjectConstants.bottomContainerColor,
              child: Center(
                  child: Text(
                'CALCULATE',
                style: ProjectConstants.iconContentFont
                    .copyWith(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
