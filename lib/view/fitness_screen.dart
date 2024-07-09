import 'package:course_selling_app/Widgets/big_card.dart';
import 'package:course_selling_app/Widgets/bookingbycall.dart';
import 'package:course_selling_app/Widgets/twoSmallCard.dart';
import 'package:flutter/material.dart';

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _LearningState();
}

class _LearningState extends State<Fitness> {
 
  @override
  Widget build(BuildContext context) {
    
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
            
            const Text('Make Your',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),
               ),
            
            const Text('Body Perfect',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 203, 247, 9)
                  ),
               ),
            
            const SizedBox(height:6),
            const BigCard(),
            const SizedBox(height: 12),
            const SmallTwoCard(),
            const SizedBox(height: 12),
            Booking()
            
          ],
        ),
      ),
    );
  }
}
