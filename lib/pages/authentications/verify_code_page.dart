import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/custom_button.dart';
import 'package:spatuu/widgets/custom_text_form_field.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  TextEditingController otp1Controller = TextEditingController(text: '');
  TextEditingController otp2Controller = TextEditingController(text: '');
  TextEditingController otp3Controller = TextEditingController(text: '');
  TextEditingController otp4Controller = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value, required FocusNode focusNode}) {
    if (value!.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField({String? value, required FocusNode focusNode}) {
    // ignore: prefer_is_empty
    if (value!.isEmpty) {
      focusNode.requestFocus();
    }
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
          'Verify Code',
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
        child: Text.rich(
          TextSpan(
            text: 'Please enter the code we just sent to your phone number',
            style: interTextStyle.copyWith(
              fontSize: 16,
              color: greyColor,
            ),
            children: [
              TextSpan(
                text: ' +62812 9293 0923',
                style: interTextStyle.copyWith(
                  fontSize: 16,
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget formOtp() {
      return Container(
        margin: const EdgeInsets.only(
          top: 54,
        ),
        child: Form(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpTextFormField(
                focusNode: pin1FocusNode,
                autoFocus: true,
                controller: otp1Controller,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode!);
                },
              ),
              OtpTextFormField(
                focusNode: pin2FocusNode,
                controller: otp2Controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    previousField(value: value, focusNode: pin1FocusNode!);
                  } else {
                    nextField(value: value, focusNode: pin3FocusNode!);
                  }
                },
              ),
              OtpTextFormField(
                focusNode: pin3FocusNode,
                controller: otp3Controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    previousField(value: value, focusNode: pin2FocusNode!);
                  } else {
                    nextField(value: value, focusNode: pin4FocusNode!);
                  }
                },
              ),
              OtpTextFormField(
                focusNode: pin4FocusNode,
                controller: otp4Controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    previousField(value: value, focusNode: pin3FocusNode!);
                  } else {
                    pin4FocusNode!.unfocus();
                  }
                },
              ),
            ],
          ),
        ),
      );
    }

    Widget resendCode() {
      return Container(
        margin: const EdgeInsets.only(
          top: 34,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Resend Code In ',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
            Text(
              '00:22',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: whiteColor,
                fontWeight: bold,
              ),
            ),
          ],
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
                text: "Continue",
                onTap: () {
                  Navigator.pushNamed(context, '/verified-success');
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
            formOtp(),
            resendCode(),
          ],
        ),
      ),
      bottomSheet: bottomSheet(),
    );
  }
}
