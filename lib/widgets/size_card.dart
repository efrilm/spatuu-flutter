import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';

class SizeCard extends StatelessWidget {
  final String text;
  final int isSelected;
  final int index;
  final VoidCallback? onTap;
  const SizeCard(
    this.index, {
    Key? key,
    required this.text,
    this.isSelected = 0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        width: 54,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: otpColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            text,
            style: interTextStyle.copyWith(
              fontSize: 18,
              color: isSelected != index ? whiteColor : yellowColor,
            ),
          ),
        ),
      ),
    );
  }
}
