import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spatuu/models/category_model.dart';
import 'package:spatuu/models/shoe_model.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/category_card.dart';
import 'package:spatuu/widgets/page_title.dart';
import 'package:spatuu/widgets/shoe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 46,
                margin: const EdgeInsets.only(
                  top: 4,
                  left: 8,
                ),
                decoration: BoxDecoration(
                  color: searchColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search any product',
                    hintStyle: interTextStyle.copyWith(
                      color: greyColor,
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: greyColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 6,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/ic_cart.png',
                  width: 24,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget specialOffer() {
      return Container(
        margin: const EdgeInsets.only(
          top: 24,
        ),
        child: Column(
          children: [
            PageTitle(
              text: 'Special Offers',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              children: [
                Container(
                  height: 181,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: defaultMargin,
                    left: defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    color: otpColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '90%',
                        style: interTextStyle.copyWith(
                          fontSize: 40,
                          fontWeight: semiBold,
                          color: yellowColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'For New User!',
                        style: interTextStyle.copyWith(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Get discount for every\nitems. Only valid for today',
                        style: interTextStyle.copyWith(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 10,
                  child: Image.asset(
                    'assets/shadow_banner.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 6,
                  child: Image.asset(
                    'assets/shoe_banner.png',
                    width: 180,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget brandCategories() {
      return Container(
        margin: const EdgeInsets.only(
          top: 36,
        ),
        child: Column(
          children: [
            PageTitle(
              text: 'Brand Categories',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
                  category.map((category) => CategoryCard(category)).toList(),
            )
          ],
        ),
      );
    }

    Widget mostPopulars() {
      return Container(
        margin: const EdgeInsets.only(
          top: 36,
        ),
        child: Column(
          children: [
            PageTitle(
              text: 'Most Populars',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 20,
              children: shoes.map((shoe) => ShoeCard(shoe)).toList(),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: header(),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          specialOffer(),
          brandCategories(),
          mostPopulars(),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
