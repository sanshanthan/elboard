import 'package:elboard/screens/market_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    MarketScreen(Colors.green),
    MarketScreen(Colors.blue),
    MarketScreen(Colors.orange),
    MarketScreen(Colors.amber),
    MarketScreen(Colors.cyan)
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select your community"),
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_two),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_rounded),
            label: "Neighbor",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Requester",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Directory",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          )
        ],
      ),
    );
  }
}
