import 'package:flutter/material.dart';

import '../utils.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Godfrey,',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Good day!'),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 107, 172, 109),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                margin: const EdgeInsets.only(top: 20),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 117, 104, 196),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Account balance',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.visibility,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const Text(
                          '********',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Image.asset(
                        'images/singer.png',
                        height: 100,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const KmoneyBtn(
                    color: Color.fromARGB(255, 107, 172, 109),
                    label: 'Add Money',
                    prefix: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Color.fromARGB(255, 107, 172, 109),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  KmoneyBtn(
                    color: const Color.fromARGB(255, 117, 104, 196),
                    label: 'Send Money',
                    prefix: Image.asset('images/aero.png',
                        height: 30, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Quick actions',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const KquickActionsTab(
                            label: 'Airtime',
                            item: Icon(
                              Icons.phone_android,
                              color: Color.fromARGB(255, 127, 177, 153),
                            ),
                          ),
                          const KquickActionsTab(
                            item: Icon(
                              Icons.network_locked,
                              color: Color.fromARGB(255, 127, 177, 153),
                            ),
                            label: 'Data',
                          ),
                          KquickActionsTab(
                            item: Image.asset(
                              'images/card.png',
                              height: 30,
                              color: const Color.fromARGB(255, 127, 177, 153),
                            ),
                            label: 'Pay Bills',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KquickActionsTab(
                            item: Image.asset(
                              'images/card.png',
                              color: const Color.fromARGB(255, 127, 177, 153),
                              height: 30,
                            ),
                            label: 'Card',
                          ),
                          KquickActionsTab(
                            item: Image.asset('images/bank.png',
                                height: 30,
                                color:
                                    const Color.fromARGB(255, 127, 177, 153)),
                            label: 'Overdraft',
                          ),
                          const KquickActionsTab(
                            label: 'Savingss',
                            item: Icon(Icons.donut_large),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 225, 232),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/guitarist.png', height: 100),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Refer a friend and get \ncompensated',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'With eitherr your username or your referal \nlink, earn as much as NGN 500 for \nevery referal',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade600),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
