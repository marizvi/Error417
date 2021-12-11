import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/memories.dart';

class MemoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final memoryId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedMemory = Provider.of<Memories>(context)
        .elements
        .firstWhere((element) => element.id == memoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedMemory.title),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(loadedMemory.imageUrl),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            padding: EdgeInsets.all(7),
            height: 130,
            width: 300,
            child: Text(loadedMemory.description),
          ),
        ],
      ),
    );
  }
}
