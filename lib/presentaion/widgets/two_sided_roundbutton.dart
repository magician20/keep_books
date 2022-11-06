import 'package:flutter/material.dart';

import '../shared/constants.dart';

class TwoSidedRoundeButton extends StatelessWidget {
  final Widget widget;
  final double? radius;
  final VoidCallback? press;
  final Color color;

  const TwoSidedRoundeButton(
      {Key? key,
      required this.widget,
      this.radius = 30,
      this.press,
      this.color = kBlackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius!),
            bottomRight: Radius.circular(radius!),
          ),
        ),
        child: widget,
      ),
    );
  }
}
