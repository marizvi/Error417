import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/memories.dart';
import "package:intl/intl.dart";

class Memory_Item extends StatelessWidget {
  void selection(BuildContext ctx, String id) {
    Navigator.of(ctx).pushNamed(
      '/memory_screen', arguments: id,
      //through id we can fetch other details later
    );
  }

  @override
  Widget build(BuildContext context) {
    final memory = Provider.of<Memory>(context);
    return InkWell(
      onTap: () => selection(context, memory.id),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 250,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  memory.imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                child: Text(
                  memory.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
