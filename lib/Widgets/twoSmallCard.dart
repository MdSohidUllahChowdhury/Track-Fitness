// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SmallTwoCard extends StatelessWidget {
  const SmallTwoCard({super.key});

  @override
  Widget build(BuildContext context) {
final size = MediaQuery.sizeOf(context);

    return Row(
              //? Running and Cycling
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 150,
                  width: size.width * .47,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 203, 247, 9),
                      borderRadius: BorderRadius.circular(26)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.run_circle_rounded,
                        size: 50,
                      ),
                      Text(
                        'Running\nDistance',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '1.8Km',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 150,
                  width: size.width * .47,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(238, 24, 22, 22),
                      borderRadius: BorderRadius.circular(26)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.directions_bike_sharp,
                        size: 45,
                        color: Colors.white,
                      ),
                      Text(
                        'Total\nCycling',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '7.9Km',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            );
  }
}