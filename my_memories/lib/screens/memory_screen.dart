import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/memories.dart';

class MemoryScreen extends StatefulWidget {
  @override
  _MemoryScreenState createState() => _MemoryScreenState();
}

class _MemoryScreenState extends State<MemoryScreen> {
  @override
  Widget build(BuildContext context) {
    final memoryId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedMemory =
        Provider.of<Memories>(context, listen: false).findById(memoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedMemory.title),
      ),
      body: Column(
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.only(),
            child: Image.network(loadedMemory.imageUrl),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              loadedMemory.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
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
