import 'package:fc_project/presentation/const/colors.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key, required this.icon
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: textfeildcolor.withOpacity(0.2)),
        child: icon);
  }
}