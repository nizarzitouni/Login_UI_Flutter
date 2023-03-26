import 'package:flutter/material.dart';
import 'package:flutter_responsice_login_ui/pallete.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({Key? key, required this.hintText, this.isObscureText = false}) : super(key: key);
  final String hintText;
  final bool isObscureText;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        obscureText: isObscureText,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Pallete.borderColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Pallete.gradient2, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
