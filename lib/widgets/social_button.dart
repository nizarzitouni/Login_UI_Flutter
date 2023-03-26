import 'package:flutter/material.dart';
import 'package:flutter_responsice_login_ui/pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.labelText,
    this.horizontalPadding = 100.0,
    required this.onPressed,
  }) : super(key: key);
  final String iconPath;
  final String labelText;
  final double horizontalPadding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: 25, color: Pallete.whiteColor),
      label: Text(
        labelText,
        style: TextStyle(color: Pallete.whiteColor, fontSize: 17),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Pallete.borderColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
