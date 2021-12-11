import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/memories.dart';

class Memory_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Memory>(context);
    return GridTile(
        child: Image.network(
      product.imageUrl,
      fit: BoxFit.cover,
    ));
  }
}
