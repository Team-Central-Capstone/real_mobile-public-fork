import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  final double logoSize;
  const AuthLogo({
    Key? key,
    required this.logoSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Image.asset(
            "assets/icons/real_sticky_icon.png",
            width: size.width * logoSize,
          ),
        ),
      ],
    );
  }
}
