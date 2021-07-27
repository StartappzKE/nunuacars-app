import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  final int goToScreenIndex;

  // 0 -> Login -> default
  // 1 -> Register

  const AuthenticationScreen({Key? key, this.goToScreenIndex = 0})
      : super(key: key);

  @override
  _AuthenticationScreenState createState() =>
      _AuthenticationScreenState(this.goToScreenIndex);
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  int goToScreenIndex;

  _AuthenticationScreenState(this.goToScreenIndex);

  void _switchToAnotherAuthenticationScreen(int whichScreen) {
    setState(() {
      goToScreenIndex = whichScreen;
    });
  }

  void _goToHomeScreenOnASpecificPage(int theSpecificPage) {
    String routeName = '/home';

    switch (theSpecificPage) {
      case 0:
        routeName = '/home';
        break;
      case 1:
        routeName = '/search';
        break;
      case 2:
        routeName = '/profile';
        break;
      case 3:
        routeName = '/menu';
        break;
      //  default is /home
    }
    Navigator.pushNamed(context, routeName);
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
      body: Container(),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/postAd');
        },
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
      currentIndex: goToScreenIndex,
      selectedItemColor: Colors.amber,
      onTap: _goToHomeScreenOnASpecificPage,
    );
  }
}
