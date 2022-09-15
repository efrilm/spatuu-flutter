import 'package:flutter/material.dart';
import 'package:spatuu/pages/authentications/confirm_pin_page.dart';
import 'package:spatuu/pages/authentications/create_new_password_page.dart';
import 'package:spatuu/pages/authentications/create_pin_page.dart';
import 'package:spatuu/pages/authentications/reset_password_page.dart';
import 'package:spatuu/pages/authentications/sign_in_page.dart';
import 'package:spatuu/pages/authentications/sign_up_page.dart';
import 'package:spatuu/pages/authentications/verified_success_page.dart';
import 'package:spatuu/pages/authentications/verify_code_page.dart';
import 'package:spatuu/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/verify-code': (context) => const VerifyCodePage(),
        '/verified-success': (context) => const VerifiedSuccessPage(),
        '/create-pin': (context) => const CreatePinPage(),
        '/confirm-pin': (context) => const ConfirmPinPage(),
        '/reset-password': (context) => const ResetPasswordPage(),
        '/create-new-password': (context) => const CreateNewPasswordPage(),
      },
    );
  }
}
