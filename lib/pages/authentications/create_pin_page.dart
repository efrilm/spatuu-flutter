import 'package:flutter/material.dart';
import 'package:spatuu/shared/thema.dart';
import 'package:spatuu/shared/variables.dart';
import 'package:spatuu/widgets/custom_button.dart';
import 'package:spatuu/widgets/custom_text_form_field.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({Key? key}) : super(key: key);

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  TextEditingController pin1Controller = TextEditingController(text: '');
  TextEditingController pin2Controller = TextEditingController(text: '');
  TextEditingController pin3Controller = TextEditingController(text: '');
  TextEditingController pin4Controller = TextEditingController(text: '');
  TextEditingController pin5Controller = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
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
          'Create your PIN',
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
          'Last Step. Create your PIN number\nfor security',
          style: interTextStyle.copyWith(
            fontSize: 16,
            color: greyColor,
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
                controller: pin1Controller,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode!);
                },
              ),
              OtpTextFormField(
                focusNode: pin2FocusNode,
                controller: pin2Controller,
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
                controller: pin3Controller,
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
                controller: pin4Controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    previousField(value: value, focusNode: pin3FocusNode!);
                  } else {
                    nextField(value: value, focusNode: pin5FocusNode!);
                  }
                },
              ),
              OtpTextFormField(
                focusNode: pin5FocusNode,
                controller: pin5Controller,
                onChanged: (value) {
                  if (value.isEmpty) {
                    previousField(value: value, focusNode: pin4FocusNode!);
                  } else {
                    pin5FocusNode!.unfocus();
                  }
                },
              ),
            ],
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
                text: "Create PIN Number",
                onTap: () {
                  Navigator.pushNamed(context, '/confirm-pin');
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
          ],
        ),
      ),
      bottomSheet: bottomSheet(),
    );
  }
}
