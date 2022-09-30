import 'package:flutter/material.dart';
import 'package:spatuu/models/shoe_model.dart';
import 'package:spatuu/pages/detail_shoe_page.dart';
import 'package:spatuu/shared/thema.dart';

class ShoeCard extends StatelessWidget {
  final ShoeModel shoe;

  const ShoeCard(
    this.shoe, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailShoePage(shoe)));
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.409,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.409,
              height: 125,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 22,
              ),
              decoration: BoxDecoration(
                color: otpColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Image.asset(
                shoe.imageUrl!,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              shoe.shoeName!,
              style: interTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                color: whiteColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  '${shoe.brandName} ·',
                  style: interTextStyle.copyWith(
                    color: greyColor,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  width: 88,
                  height: 27,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: yellowColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '${shoe.sold} Sold',
                    style: interTextStyle.copyWith(
                      color: yellowColor,
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'IDR ${shoe.price}',
              style: interTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
