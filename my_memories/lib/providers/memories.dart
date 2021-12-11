import 'package:flutter/foundation.dart';
import 'package:my_memories/models/memory.dart';

class Memory with ChangeNotifier {
  final String id;
  final String title;
  final DateTime date;
  final String description;
  final String imageUrl;
  bool isFavorite;

  Memory(
      {required this.id,
      required this.title,
      required this.date,
      required this.description,
      required this.imageUrl,
      this.isFavorite = false});

  void toggleFavorite() {
    print(isFavorite);
    isFavorite = !isFavorite;
    print(isFavorite);
    notifyListeners();
  }
}

class Memories with ChangeNotifier {
  List<Memory> _elements = [
    Memory(
      id: 'e1',
      title: 'Memory 1',
      date: DateTime.now().subtract(Duration(days: 1000)),
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://images.pexels.com/photos/374710/pexels-photo-374710.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    Memory(
      id: 'e2',
      title: 'Memory 2',
      date: DateTime.now().subtract(Duration(days: 1500)),
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://www.tourmyindia.com/blog//wp-content/uploads/2020/11/Taj-Mahal-Agra-feature.jpg',
    ),
    Memory(
      id: 'e3',
      title: 'Memory 3',
      date: DateTime.now().subtract(Duration(days: 1800)),
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://vajiramandravi.s3.us-east-1.amazonaws.com/media/2021/1/16/11/44/59/STATUE_OF_UNITYY.jpg',
    ),
    Memory(
      id: 'e4',
      title: 'Memory 4',
      date: DateTime.now().subtract(Duration(days: 700)),
      description:
          'This was the time when I first tried XYZ and it gave me immense pleasure..',
      imageUrl:
          'https://media.easemytrip.com/media/Blog/India/636989731119059291/636989731119059291QEwCcM.jpg',
    ),
  ];

  List<Memory> get elements {
    return [..._elements];
  }

  Memory findById(String id) {
    return _elements.firstWhere((element) => element.id == id);
  }

  List<Memory> _favList = [];
  // void addFav(Memory mem) {
  //   // final existingIndex = _favList.indexWhere((element) => element.id == id);
  //   final newProduct = Memory(
  //       id: mem.id,
  //       title: mem.title,
  //       date: mem.date,
  //       description: mem.description,
  //       imageUrl: mem.imageUrl);
  //   _favList.add(newProduct);
  //   print(_favList.length);
  //   // notifyListeners();
  // }

  List<Memory> get favEle {
    return _elements.where((element) => element.isFavorite).toList();
    // print("inLen");
    // print(_favList.length);
    // return _favList;
  }
}
