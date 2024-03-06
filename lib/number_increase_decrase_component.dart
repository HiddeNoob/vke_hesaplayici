import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class IncreaseDecraseComponent extends StatelessWidget {
  const IncreaseDecraseComponent(this.screenNumber,this.title,{super.key,this.onIncrease,this.onDecrease});
  final int screenNumber;
  final void Function()? onIncrease;
  final void Function()? onDecrease;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: ProjectConstants.iconContentFont,
        ),
        Text(
          '${screenNumber}',
          style: ProjectConstants.numberTextStyle,
        ),
        Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: onDecrease,
                  icon: Icon(Icons.remove)),
              IconButton(
                  highlightColor: ProjectConstants.activeCardColor,
                  onPressed: onIncrease,
                  icon: Icon(Icons.add)),
            ],
        )
      ],
    );
  }
}
