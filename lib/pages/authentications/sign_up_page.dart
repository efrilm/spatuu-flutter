import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/widgets/custom_button.dart';
import 'package:spatuu/widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              'Hello Fish 👋',
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
              'Create your account & enjoy',
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

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: const CustomTextFormField(
          hint: 'Type Your Username',
          prefixIcon: IconlyLight.profile,
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
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

    Widget buttonSignUp() {
      return Container(
        margin: const EdgeInsets.only(
          top: 54,
        ),
        child: CustomButton(
          text: 'Sign Up',
          onTap: () {
            Navigator.pushNamed(context, '/verify-code');
          },
        ),
      );
    }

    Widget alreadyHaveAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have account? ',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign In',
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
          usernameInput(),
          phoneInput(),
          passwordInput(),
          buttonSignUp(),
          alreadyHaveAccount(),
        ],
      ),
    );
  }
}
