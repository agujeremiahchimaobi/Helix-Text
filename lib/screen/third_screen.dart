import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/guitarist.png', height: 200),
          const SizedBox(height: 30),
          const Text(
            'No transactions yet, make your \nfirst transaction now',
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
