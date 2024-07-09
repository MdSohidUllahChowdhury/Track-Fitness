import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Booking (){
  return  Container(
              //?Appoinment
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
                  const Text(
                    '  Appoinment',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    width: 80,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 203, 247, 9),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.phone_in_talk, color: Colors.black)),
                  ),
                ],
              ),
            );
}