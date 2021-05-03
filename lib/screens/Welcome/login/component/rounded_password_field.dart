import 'package:agami_dummy/screens/Welcome/login/component/textfield_container.dart';
import 'package:flutter/material.dart';

import '../../../../constant.dart';

class RoundedPasswordField extends StatelessWidget {

  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(Icons.lock, color: kPrimaryColor),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}