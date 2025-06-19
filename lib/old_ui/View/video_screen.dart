import 'package:flutter/material.dart';
import 'package:track_fitness/old_ui/Widget/Video_screen/data_insart.dart';
import 'package:track_fitness/old_ui/Widget/Video_screen/nonplayer.dart';
import 'package:track_fitness/old_ui/Widget/Video_screen/play_list.dart';

class VideoScreen extends StatefulWidget {
   const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final dataCalling = dataInsart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nonPlayer(context),
          const SizedBox(height: 4),
          const SizedBox(
            height:30,
            child: Row(
              children: [
                Text('   Chest Home Workouts',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 4,),
                Icon(Icons.playlist_add_circle_sharp,color: Colors.white,size:24,)
              ],
            ),
          ),
          const SizedBox(height: 4),
          
          Expanded(
            child: ListView.builder(
              itemCount: dataCalling.length,
              itemBuilder: (_, index) {
               final data = dataCalling[index];
              return playList(
                data.title, 
                data.video_duration, 
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
