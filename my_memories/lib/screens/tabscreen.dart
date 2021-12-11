import 'package:flutter/material.dart';
import 'package:my_memories/screens/favorite_screen.dart';
import 'package:my_memories/screens/home.dart';
import 'package:provider/provider.dart';
import '../providers/memories.dart';

class TabScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<TabScreen> {
  List<Map<String, Object>> _pages = [];

  void initState() {
    _pages = [
      {
        //String: //Object
        'page': HomePage(),
        'title': 'App Name',
      },
      {
        //String: //Object
        'page': FavoriteScreen(),
        'title': 'Add Memories',
      },
      {
        //String: //Object
        'page': FavoriteScreen(),
        'title': 'Your Favourites',
      }
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => Memories(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              _pages[_selectedPageIndex]['title'] as String,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          body: _pages[_selectedPageIndex]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
            // onTap: (index) {
            //   print(index);
            // }, //will automatically provide index
            onTap: _selectPage,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType
                .shifting, //adds slight animation to navigation bar

            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.home_filled),
                  title: Text(
                    'Home',
                  )),
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
        ));
  }
}
