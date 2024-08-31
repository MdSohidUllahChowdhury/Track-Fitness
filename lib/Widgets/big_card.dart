import 'package:track_fitness/view/detailes_screen.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      //? 1st container 5 column; and 2nd container 1 image
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 10),
          height: size.height * .28,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 203, 247, 9),
              borderRadius: BorderRadius.circular(26)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Full Body\nExercise X3',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const Row(
                children: [
                  Icon(Icons.local_fire_department_outlined),
                  Text(
                    '1230 kCal',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(
                children: [
                  Icon(Icons.timer),
                  Text('50'),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 146, 179, 3),
                    borderRadius: BorderRadius.circular(26)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FitnessDetails(),
                          ));
                    },
                    child: const Text(
                      'Start Now',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    )),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 160, top: 22),
          height: 200,
          width: 140,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'lib/Assets/logo.jpg',
          ))),
        )
      ],
    );
  }
}
