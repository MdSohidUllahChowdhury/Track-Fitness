import 'package:flutter/material.dart';

Widget bottom(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 8),
          width: MediaQuery.sizeOf(context).width * .35,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 146, 179, 3),
              borderRadius: BorderRadius.circular(26)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.timer_outlined),
              Text('125'),
              Text('Minutes'),
            ],
          )),
      Container(
          margin: const EdgeInsets.only(top: 8),
          width: MediaQuery.sizeOf(context).width * .25,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 146, 179, 3),
              borderRadius: BorderRadius.circular(26)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.play_circle_outlined),
              Text('Play'),
            ],
          )),
      Container(
          margin: const EdgeInsets.only(top: 8),
          width: MediaQuery.sizeOf(context).width * .27,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 146, 179, 3),
              borderRadius: BorderRadius.circular(26)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.wifi_protected_setup_sharp),
              Text('Follow'),
            ],
          )),
    ],
  );
}
