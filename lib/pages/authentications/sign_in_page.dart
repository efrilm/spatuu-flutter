import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/widgets/custom_button.dart';
import 'package:spatuu/widgets/custom_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPassword = true;

  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Welcome Back',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Sign In to your account',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            )
          ],
        ),
      );
    }

    Widget buttonSignInGoogle() {
      return const Padding(
        padding: EdgeInsets.only(
          top: 50,
        ),
        child: ButtonGoogle(),
      );
    }

    Widget divider() {
      return Container(
        margin: const EdgeInsets.only(
          top: 22,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 1,
              color: greyColor,
            ),
            Text(
              'OR',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 1,
              color: greyColor,
            ),
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: const CustomTextFormField(
          hint: 'Type Your Phone Number',
          prefixIcon: IconlyLight.call,
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Type Your Password',
            hintStyle: interTextStyle.copyWith(
              color: greyColor,
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIcon: const Icon(
              IconlyLight.lock,
              color: greyColor,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                isPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
              ),
              onPressed: togglePassword,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: greyColor),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: yellowColor,
              ),
            ),
            focusColor: yellowColor,
          ),
        ),
      );
    }

    Widget forgotPassword() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/reset-password');
            },
            child: Text(
              'Forgot Password?',
              style: interTextStyle.copyWith(
                color: yellowColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: const EdgeInsets.only(
          top: 54,
        ),
        child: CustomButton(
          text: 'Sign In',
          onTap: () {},
        ),
      );
    }

    Widget dontHaveAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have account? ',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: interTextStyle.copyWith(
                  color: yellowColor,
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          header(),
          buttonSignInGoogle(),
          divider(),
          phoneInput(),
          passwordInput(),
          forgotPassword(),
          buttonSignIn(),
          dontHaveAccount(),
        ],
      ),
    );
  }
}
