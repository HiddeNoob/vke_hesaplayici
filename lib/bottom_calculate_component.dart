import 'package:flutter/material.dart';

import 'constants.dart';

class BottomCalculateComponent extends StatelessWidget {
  final String innerText;
  const BottomCalculateComponent({super.key,required this.innerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: ProjectConstants.bottomContainerColor,
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
                innerText,
                style: ProjectConstants.iconContentFont
                    .copyWith(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
