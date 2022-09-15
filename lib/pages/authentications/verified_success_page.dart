import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/custom_button.dart';

class VerifiedSuccessPage extends StatelessWidget {
  const VerifiedSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 124,
                  width: 124,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 34,
                    vertical: 41,
                  ),
                  decoration: const BoxDecoration(
                    color: otpColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/ic_check.png',
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                Text(
                  'Account Verified',
                  style: urbanistTextStyle.copyWith(
                    color: whiteColor,
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          'Your account has been verified succefully.\n Lets enjoy',
                      style: interTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                        color: greyColor,
                      ),
                      children: [
                        TextSpan(
                          text: ' Sapatu ',
                          style: interTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                            color: whiteColor,
                          ),
                        ),
                        TextSpan(
                          text: 'featured.',
                          style: interTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                            color: greyColor,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  text: "Created Pin",
                  onTap: () {
                    Navigator.pushNamed(context, '/create-pin');
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomSecondaryButton(
                  text: 'Get Started',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
