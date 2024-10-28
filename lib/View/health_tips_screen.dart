import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FitnessDetails extends StatefulWidget {
  const FitnessDetails({super.key});

  @override
  State<FitnessDetails> createState() => _FitnessDetailsState();
}

class _FitnessDetailsState extends State<FitnessDetails> {
  List<Map> barinfo = [
    {
      'BP': 85,
      'index': 'SA',
    },
    {
      'BP': 75,
      'index': 'SU',
    },
    {
      'BP': 90,
      'index': 'MO',
    },
    {
      'BP': 65,
      'index': 'TU',
    },
    {
      'BP': 70,
      'index': 'WE',
    },
    {
      'BP': 55,
      'index': 'TH',
    },
    {
      'BP': 80,
      'index': 'FR',
    },
  ];
  
  List<String> slidercontend = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9uOLe6qkFSDc48cLCjsWInqWrLSkiB7IDNj8CUVgTbQ&s',
    'https://cdn.dribbble.com/users/2951446/screenshots/6361953/smuti-slider_still_2x.gif?resize=400x0',
    'https://3.bp.blogspot.com/-LKgDoJZfEyU/UBKXUIALobI/AAAAAAAAAjk/dafHbDYzH_w/s1600/healthy+food.jpg',
    'https://ucarecdn.com/1579f3d3-4ab2-40a9-9015-679d18eeeadb/-/crop/1630x918/1,0/-/preview/-/quality/lighter/-/format/auto/-/scale_crop/1920x1080/center/',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_circle_left_outlined,
                color: Colors.white,
                size: 40,
              )),
          actions: [IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_rounded,
                  size: 40,
                ))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
              const Text(
                'Health',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                'Overview',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 203, 247, 9)),
              ),
              const SizedBox(height: 12),
              CarouselSlider.builder(
                  itemCount: slidercontend.length,
                  itemBuilder: (context, index, realIndex) 
                  => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(slidercontend[index]),
                                fit: BoxFit.cover)
                                ),
                      ),
                  options: 
                  CarouselOptions(
                    height: 170,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                   )
                  ),
              const SizedBox(height:30),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.all(10),
                height: size.height * .32,
                width: size.width * .99,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(
                        color: const Color.fromARGB(255, 203, 247, 9))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Blood Pressure',
                      style: TextStyle(
                          color: Color.fromARGB(255, 203, 247, 9),
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 150,
                      child: BarChart(
                        BarChartData(
                        maxY: 100,
                        minY: 0,
                       )
                      ),
                    )
                  ],
                ),
              ),
            ]
            )
            )
            );
  }
}
