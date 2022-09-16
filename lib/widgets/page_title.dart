import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';

class PageTitle extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PageTitle({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: interTextStyle.copyWith(
            fontSize: 16,
            color: whiteColor,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'See All',
            style: interTextStyle.copyWith(
              color: greyColor,
              fontWeight: light,
            ),
          ),
        )
      ],
    );
  }
}
