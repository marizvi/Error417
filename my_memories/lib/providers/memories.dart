import 'package:flutter/foundation.dart';

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
  List<Memory> _elements = [];
  List<Memory> get elements {
    return [..._elements];
  }
}
