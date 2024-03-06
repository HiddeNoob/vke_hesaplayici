import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key,required this.color,this.child,this.onTap});
  final void Function()? onTap;
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(15)),
        child: child,
      ),
    );
  }
}