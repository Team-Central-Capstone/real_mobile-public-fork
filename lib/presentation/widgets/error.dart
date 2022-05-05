import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorOfAPI extends StatelessWidget {
  final String? errorMessage;
  final Function()? onRetryPressed;
  const ErrorOfAPI({Key? key, this.errorMessage, this.onRetryPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset(
            'assets/lottie/404_error_page.json',
            repeat: true,
            reverse: false,
            animate: true,
          ),
          Text(
            errorMessage!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            color: Colors.redAccent,
            child: Text(
              'Retry',
            ),
            onPressed: onRetryPressed,
          )
        ],
      ),
    );
  }
}
