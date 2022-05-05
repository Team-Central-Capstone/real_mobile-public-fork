import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  final String? loadingMessage;
  const Loading({Key? key, this.loadingMessage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 24),
          // const CircularProgressIndicator(
          //   valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen),
          // ),
          Lottie.asset(
            'assets/lottie/loading.json',
            repeat: true,
            reverse: false,
            animate: true,
          ),
        ],
      ),
    );
  }
}
