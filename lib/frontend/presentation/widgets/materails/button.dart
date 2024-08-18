import 'package:devzur/frontend/global/theme/style/decoration.dart';
import 'package:flutter/material.dart';

class ButtonElvated extends StatelessWidget {
  final Function()? onTap;
  final String lable;
  const ButtonElvated({super.key, this.onTap, required this.lable});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: decoration,
        child: Center(
          child: Text(
            lable,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
