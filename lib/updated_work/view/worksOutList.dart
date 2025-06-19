import 'package:flutter/material.dart';
import 'package:track_fitness/updated_work/model/listClass.dart';
import 'package:track_fitness/updated_work/model/listModel.dart';

class WorksOutList extends StatelessWidget {
  const WorksOutList({super.key});

  @override
  Widget build(BuildContext context) {
    
final List<Listclass> json = WorkOutList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Workouts'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          
        Expanded(
          child: ListView.builder(
            itemCount: json.length,
            itemBuilder: (context, index) {
              final workout = json[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                elevation: 6,
                child: ListTile(
                  leading: CircleAvatar(
                    // backgroundImage: NetworkImage(workout.imageUrl ?? 'https://via.placeholder.com/150'),
                    backgroundColor: workout.color ?? Colors.grey,
                  ),
                  title: Text(workout.name ?? 'No Name'),
                  titleTextStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Text(workout.description ?? 'No Description'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Created at: ${workout.createdAt}'),
                      Text('Updated at: ${workout.updatedAt}'),
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}