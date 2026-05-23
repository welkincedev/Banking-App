import 'package:bankapp/screens/homescreen.dart';
import 'package:bankapp/screens/historyScreen.dart';
import 'package:bankapp/screens/BillsScreen.dart';
import 'package:bankapp/screens/trasnferscreen.dart';
import 'package:flutter/material.dart';

import 'cardScreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    TransferScreen(),
    CardsScreen(),
    HistoryScreen(),
    BillsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "Transfer"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Cards",),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Bills"),
        ],
      ),
    );
  }
}
