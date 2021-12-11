import 'package:flutter/foundation.dart';
import 'package:my_memories/models/memory.dart';

class Memory with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  bool isFavorite;

  Memory(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      this.isFavorite = false});
}

class Memories with ChangeNotifier {
  List<Memory> _elements = [
    Memory(
      id: 'e1',
      title: 'Memory 1',
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://images.pexels.com/photos/374710/pexels-photo-374710.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    Memory(
      id: 'e1',
      title: 'Memory 1',
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://www.tourmyindia.com/blog//wp-content/uploads/2020/11/Taj-Mahal-Agra-feature.jpg',
    ),
    Memory(
      id: 'e1',
      title: 'Memory 1',
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://vajiramandravi.s3.us-east-1.amazonaws.com/media/2021/1/16/11/44/59/STATUE_OF_UNITYY.jpg',
    ),
    Memory(
      id: 'e1',
      title: 'Memory 1',
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://media.easemytrip.com/media/Blog/India/636989731119059291/636989731119059291QEwCcM.jpg',
    ),
  ];

  List<Memory> get elements {
    return [..._elements];
  }
}
