import 'package:flutter/material.dart';
import 'package:helixtest/screen/first_screen.dart';
import 'package:helixtest/screen/fourth_screen.dart';
import 'package:helixtest/screen/second_screen.dart';
import 'package:helixtest/screen/third_screen.dart';

class BaseApp extends StatefulWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  int selectedindex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  static List pages = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        currentIndex: selectedindex,
        selectedItemColor: const Color.fromARGB(255, 131, 201, 167),
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/bank.png'),
              ),
              label: 'Banks'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/history.png'),
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/set.png'),
              ),
              label: 'More'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 117, 104, 196),
        child: Image.asset(
          'images/fm.png',
          height: 30,
          color: Colors.white.withOpacity(0.40),
        ),
      ),
    );
  }
}
