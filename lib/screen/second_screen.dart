import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 117, 104, 196),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 90,
                backgroundColor: Colors.white,
              ),
              Image.asset(
                'images/singer.png',
                height: 200,
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Link Accounts',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Now you can manage your finances easily \nwith Raven, easily link your account into \none place',
            style: TextStyle(color: Colors.white, fontSize: 17),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Container(
            height: 45,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
                child: Text(
              'Link Account',
              style: TextStyle(
                  color: Color.fromARGB(255, 117, 104, 196),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )),
          )
        ],
      ),
    );
  }
}
