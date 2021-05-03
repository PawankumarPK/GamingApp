import 'package:agami_dummy/constant.dart';
import 'package:agami_dummy/screens/Welcome/login/component/background.dart';
import 'package:agami_dummy/screens/Welcome/login/component/round_input_field.dart';
import 'package:agami_dummy/screens/Welcome/login/component/textfield_container.dart';
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
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color:kPrimaryColor
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




