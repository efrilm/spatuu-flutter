import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/custom_button.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  bool isPassword = true;
  bool isConfirmPassword = true;

  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  void toggleConfirmPassword() {
    setState(() {
      isConfirmPassword = !isConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonBack() {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 24,
          ),
          alignment: Alignment.topLeft,
          child: const Icon(
            Icons.arrow_back,
            color: whiteColor,
            size: 24,
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Text(
          'Create New Password',
          style: poppinsTextStyle.copyWith(
            color: whiteColor,
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(
          top: 12,
        ),
        child: Text(
          'Enter your new password below correctly',
          style: interTextStyle.copyWith(
            fontSize: 16,
            color: greyColor,
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 36,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Type Your New Password',
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

    Widget confirmPasswordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 18,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          cursorColor: yellowColor,
          obscureText: isConfirmPassword,
          decoration: InputDecoration(
            hintText: 'Confirm Your New Password',
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
                isConfirmPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
              ),
              onPressed: toggleConfirmPassword,
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

    Widget bottomSheet() {
      return Container(
        color: backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xFF212121),
            ),
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: CustomButton(
                text: "Create New Password",
                onTap: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            buttonBack(),
            title(),
            subtitle(),
            passwordInput(),
            confirmPasswordInput(),
          ],
        ),
      ),
      bottomSheet: bottomSheet(),
    );
  }
}
