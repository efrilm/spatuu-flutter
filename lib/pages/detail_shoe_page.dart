import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu/models/shoe_model.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/custom_button.dart';
import 'package:spatuu/widgets/galleri_shoe_card.dart';
import 'package:spatuu/widgets/size_card.dart';

class DetailShoePage extends StatefulWidget {
  final ShoeModel shoe;
  const DetailShoePage(
    this.shoe, {
    Key? key,
  }) : super(key: key);

  @override
  State<DetailShoePage> createState() => _DetailShoePageState();
}

class _DetailShoePageState extends State<DetailShoePage> {
  int selectedImage = 0;
  int selectedColor = 0;
  int selectedSize = 0;

  bool selectedfavo = true;

  final colors = [
    'assets/detail-shoe-1.png',
    'assets/detail-color.png',
  ];

  final sizes = [
    '5',
    '5.5',
    '6.5',
    '7',
    '8.5',
  ];

  @override
  Widget build(BuildContext context) {
    Widget background() {
      return Container(
        width: double.infinity,
        height: 244,
        decoration: const BoxDecoration(
          color: Color(0xFF262626),
        ),
      );
    }

    Widget appBar() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF262626),
          elevation: 0,
          title: Text(
            'Details Product',
            style: poppinsTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/ic_cart.png',
                width: 24,
              ),
            ),
          ],
        ),
      );
    }

    Widget shoeCard() {
      return Positioned(
        top: 72,
        left: 24,
        right: 24,
        child: Container(
          height: 302,
          decoration: BoxDecoration(
            color: secondaryBtnColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                right: 10,
                bottom: 80,
                child: Image.asset(
                  widget.shoe.galleries![selectedImage],
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      widget.shoe.galleries!.length,
                      (index) => GalleriShoeCard(
                        index,
                        isSelected: selectedImage,
                        imageUrl: widget.shoe.galleries![index],
                        onTap: () {
                          setState(() {
                            selectedImage = index;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.shoe.shoeName!,
                  style: interTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                    color: whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.shoe.brandName} ·',
                      style: interTextStyle.copyWith(
                        color: greyColor,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 27,
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: yellowColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        '${widget.shoe.sold} Sold',
                        style: interTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                          color: yellowColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.star,
                      color: ratingColor,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '5.0',
                      style: interTextStyle.copyWith(
                        color: ratingColor,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '(6.828)',
                      style: interTextStyle.copyWith(
                        color: whiteColor,
                      ),
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedfavo = !selectedfavo;
                });
              },
              child: Container(
                width: 36,
                height: 36,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: otpColor,
                  shape: BoxShape.circle,
                ),
                child: selectedfavo == true
                    ? const Icon(
                        IconlyBold.heart,
                        color: redColor,
                      )
                    : const Icon(
                        IconlyLight.heart,
                        color: whiteColor,
                      ),
              ),
            )
          ],
        ),
      );
    }

    Widget divider() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 1,
        decoration: const BoxDecoration(
          color: dividerColor,
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: interTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text.rich(
              TextSpan(
                  text:
                      'You chase the clock, challenging & encouraging each other all in the name of achieving goals & making gains. ',
                  style: interTextStyle.copyWith(
                    color: whiteColor,
                    fontWeight: light,
                    height: 2,
                  ),
                  children: [
                    TextSpan(
                      text: 'Read More',
                      style: interTextStyle.copyWith(
                        color: yellowColor,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );
    }

    Widget color() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Colors Type',
              style: interTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GalleriShoeCard(
                      index,
                      imageUrl: colors[index],
                      width: 54,
                      height: 54,
                      isSelected: selectedColor,
                      color: otpColor,
                      onTap: () {
                        setState(() {
                          selectedColor = index;
                        });
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget size() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Size (US)',
              style: interTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    sizes.length,
                    (index) => SizeCard(
                      index,
                      text: sizes[index],
                      isSelected: selectedSize,
                      onTap: () {
                        setState(() {
                          selectedSize = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Container(
        color: backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 1,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: const Color(0xFF212121),
            ),
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: interTextStyle.copyWith(color: greyColor),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'IDR ${widget.shoe.price}',
                        style: interTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  const CustomButtonWithIcon()
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 394,
              ),
              background(),
              appBar(),
              shoeCard(),
            ],
          ),
          title(),
          divider(),
          description(),
          color(),
          size(),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
