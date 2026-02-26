import 'package:flutter/material.dart';
import 'package:periodic_table/view/PeriodicGame.dart';
import 'profile_screen.dart';
import 'package:periodic_table/view/feedback_list_screen.dart';
import 'package:periodic_table/view/Periodic_Table.dart';
// This is the file that is for the navigation bar on the bottom of the app
class MainNavigationScreen extends StatefulWidget{
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen>{
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PeriodicTable(),
    const PeriodicGame(),
    const FeedbackListScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Perodic Table',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Perodic Game',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Give Feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}