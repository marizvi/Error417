import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: (index) {
        //   print(index);
        // }, //will automatically provide index
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        // currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType
            .shifting, //adds slight animation to navigation bar

        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.home_filled),
              title: Text('Home')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.add_box_rounded),
              title: Text('Add')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Favourites')),
        ],
      ),
    );
  }
}
