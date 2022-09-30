import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';

class GalleriShoeCard extends StatelessWidget {
  final String imageUrl;
  final int isSelected;
  final Color color;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final int index;
  const GalleriShoeCard(
    this.index, {
    Key? key,
    required this.imageUrl,
    this.isSelected = 0,
    this.color = backgroundColor,
    this.width = 48,
    this.height = 46,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            width: width,
            height: width,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(imageUrl),
          ),
          isSelected == index
              ? Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.05),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: whiteColor,
                            size: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
