import 'package:flutter/material.dart';

Widget booking(String title, IconData icons, void Function()? pagePath) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    width: double.infinity,
    height: 70,
    decoration: BoxDecoration(
      color: const Color.fromARGB(238, 24, 22, 22),
      borderRadius: BorderRadius.circular(26),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Container(
          width: 80,
          height: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 247, 9),
            borderRadius: BorderRadius.circular(26),
          ),
          child: IconButton(
              onPressed: pagePath, icon: Icon(icons, color: Colors.black)),
        ),
      ],
    ),
  );
}
