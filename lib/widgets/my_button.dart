import 'package:flutter/material.dart';
import 'package:flutter_responsice_login_ui/pallete.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Pallete.gradient1,
              Pallete.gradient2,
              Pallete.gradient3,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(7)),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Pallete.whiteColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          fixedSize: const Size(395, 55),
        ),
      ),
    );
  }
}
