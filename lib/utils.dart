import 'package:flutter/material.dart';

class KmoneyBtn extends StatelessWidget {
  const KmoneyBtn({Key? key, required this.label, this.prefix, this.color})
      : super(key: key);

  final String label;
  final dynamic prefix;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefix,
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class Kprofiletabs extends StatelessWidget {
  const Kprofiletabs({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.15),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: child,
      ),
    );
  }
}

class Kprofilecard extends StatelessWidget {
  const Kprofilecard(
      {Key? key, required this.title, required this.subtitle, this.prefix})
      : super(key: key);

  final String title;
  final String subtitle;
  final dynamic prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefix,
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(subtitle),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 10,
          )
        ],
      ),
    );
  }
}

class KquickActionsTab extends StatelessWidget {
  const KquickActionsTab({Key? key, required this.label, this.item})
      : super(key: key);

  final String label;
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [item, Text(label)],
      ),
    );
  }
}
