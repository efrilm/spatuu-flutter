import 'package:flutter/material.dart';
import 'package:spatuu/models/category_model.dart';
import 'package:spatuu/shared/thema.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard(
    this.category, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: otpColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Image.asset(
            category.brandIcon!,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          category.brandName!,
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
        ),
      ],
    );
  }
}
