import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:track_fitness/updated_work/view/worksOutList.dart';

class Fitnesshomescreen extends StatelessWidget {
  const Fitnesshomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Home'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Fitness App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.blue, // Text color
              ),
              onPressed: () {
                Get.to(()=> const WorksOutList());
                // Action for the button
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Never Give Up! Stay Fit! Keep Pushing!')),
                );
              },
              child: const Text('All Workouts List'),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the button
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button Pressed')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}