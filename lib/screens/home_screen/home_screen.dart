import 'package:flutter/material.dart';
import 'package:nunuacars/screens/home_screen/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Image.asset('assets/images/nunuacars_header.png',
              fit: BoxFit.fill),
        ),
      ),
      body: Center(
        child: HomeScreenWidgets.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationButtons(),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user,
            color: Colors.black,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          label: 'Menu',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: _onItemTapped,
    );
  }
}
