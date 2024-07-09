import 'package:course_selling_app/view/detailes_screen.dart';
import 'package:flutter/material.dart';

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _LearningState();
}

class _LearningState extends State<Fitness> {
 
  @override
  Widget build(BuildContext context) {
   
    final size = MediaQuery.sizeOf(context);
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 37,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu,
              color: Colors.white,
              )
            ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_circle_right))
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text(
              'Make Your',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            
            const Text(
              'Body Perfect',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 203, 247, 9)),
            ),
            
            Stack(
              //? 1st container 5 column; and 2nd container 1 image
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  height: size.height * .28,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 203, 247, 9),
                      borderRadius: BorderRadius.circular(26)
                      ),
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
                          Text('1230 kCal',
                            style: TextStyle(fontWeight: FontWeight.w500,),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
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
                          image: AssetImage('lib/Assets/logo.jpg',)
                          )
                          ),
                )
              ],
            ),
            const SizedBox(height: 12,),
            Row(
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
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
