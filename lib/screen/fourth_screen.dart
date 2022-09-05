import 'package:flutter/material.dart';
import 'package:helixtest/utils.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 250,
              color: const Color.fromARGB(255, 54, 92, 56),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        'images/logo.jpg',
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'GODFREY AYAOSI',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Kprofiletabs(
                          child: Text(
                            '@alphadude',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Kprofiletabs(
                            child: Image.asset(
                          'images/note.png',
                          height: 15,
                        )),
                        Kprofiletabs(
                          child: Image.asset('images/reply.png',
                              height: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Kprofilecard(
              prefix: Icon(
                Icons.person,
                size: 30,
                color: Color.fromARGB(255, 127, 177, 153),
              ),
              title: 'Profile',
              subtitle: 'Manage your profile',
            ),
            Kprofilecard(
              prefix: Image.asset(
                'images/card.png',
                color: const Color.fromARGB(255, 127, 177, 153),
                height: 25,
              ),
              title: 'Bank Statements',
              subtitle: 'Download your transaction statements',
            ),
            Kprofilecard(
              prefix: Image.asset('images/note.png',
                  height: 25, color: const Color.fromARGB(255, 127, 177, 153)),
              title: 'Identity Verification',
              subtitle: 'verify your identity & increase limits',
            ),
            Kprofilecard(
              prefix: Image.asset('images/set.png',
                  height: 30, color: const Color.fromARGB(255, 127, 177, 153)),
              title: 'preferences',
              subtitle: 'Customize Raven to suit',
            ),
            Kprofilecard(
              prefix: Image.asset('images/refresh.png', height: 30),
              title: 'Account Limit',
              subtitle: 'See your daily transaction limits',
            ),
            Kprofilecard(
              prefix: Image.asset('images/heart.png',
                  color: const Color.fromARGB(255, 127, 177, 153)),
              title: 'Beneficiaries',
              subtitle: 'Manage your verified bank acounts',
            ),
          ],
        ),
      ),
    );
  }
}
