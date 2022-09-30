import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: btnGoogleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ic_google.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'Sign In with Google',
              style: poppinsTextStyle.copyWith(
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: yellowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          text,
          style: poppinsTextStyle.copyWith(
            color: blackColor,
            fontWeight: bold,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

class CustomSecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomSecondaryButton(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: secondaryBtnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          text,
          style: poppinsTextStyle.copyWith(
            color: whiteColor,
            fontWeight: bold,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: yellowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add to Card',
              style: interTextStyle.copyWith(
                color: backgroundColor,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Image.asset(
              'assets/ic_cart.png',
              width: 24,
              color: backgroundColor,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
