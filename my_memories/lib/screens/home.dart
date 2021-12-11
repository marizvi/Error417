import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_memories/widgets/memory_grid.dart';

class HomePage extends StatelessWidget {
  final List _source = [
    'https://www.ukras.org/wp-content/uploads/formidable/45/1.jpg',
    'https://wallpaperforu.com/wp-content/uploads/2020/07/city-wallpaper-200725163937371920x1200.jpg',
    'https://cdn.99images.com/photos/wallpapers/travel-world/mumbai%20android-iphone-desktop-hd-backgrounds-wallpapers-1080p-4k-at4eb.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              color: Colors.teal[100],
              height: 200,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 195, autoPlay: true, enlargeCenterPage: true),
                items: _source.map((i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      i as String,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Flexible(
          flex: 2,
          child: MemoryGrid(),
        )
      ],
    );
  }
}
