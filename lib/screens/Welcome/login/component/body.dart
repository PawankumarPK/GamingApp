import 'package:agami_dummy/component/rounded_button.dart';
import 'package:agami_dummy/constant.dart';
import 'package:agami_dummy/screens/Welcome/login/component/already_have_an_account_check.dart';
import 'package:agami_dummy/screens/Welcome/login/component/background.dart';
import 'package:agami_dummy/screens/Welcome/login/component/round_input_field.dart';
import 'package:agami_dummy/screens/Welcome/login/component/rounded_password_field.dart';
import 'package:agami_dummy/screens/Welcome/login/component/textfield_container.dart';
import 'package:agami_dummy/screens/Welcome/signUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
