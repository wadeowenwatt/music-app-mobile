import 'package:flutter/material.dart';
import 'package:music_app_mobile/screens/home.dart';
import 'package:music_app_mobile/screens/search.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  //default index = 0 -> home
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Text(
      'Index 2: Account',
    ),
    Text(
      'Index 3: Music',
    ),
  ];

  // function setting selectedIndex when I tap it.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xfffad744),
                Color(0xffef5455),
                Color(0xff4C6CD7),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.blue,
              size: 30,
            )),
        title: Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Text.rich(TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'MUSIC',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TrainOne',
                      color: Color(0xff4C6CD7),
                    )),
                TextSpan(
                  text: 'BOX',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TrainOne',
                    color: Color(0xfffad744),
                  ),
                )
              ],
            ))),
      ),
      body: Card(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          )
        ],
        // selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 30.0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.red
      ),
    );
  }
}
