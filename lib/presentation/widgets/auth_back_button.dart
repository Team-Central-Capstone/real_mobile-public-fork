import 'package:flutter/material.dart';

class AuthBackButton extends StatelessWidget {
  final void Function() onTap;

  const AuthBackButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: const Icon(
            IconData(0xe808),
            color: Colors.white,
            size: 28,
          ),
        )
      ],
    );
  }
}
