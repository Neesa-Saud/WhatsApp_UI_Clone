import 'package:flutter/material.dart';
import 'package:myapp/pages/call.dart';
import 'package:myapp/pages/chat.dart';
import 'package:myapp/pages/community.dart';
import 'package:myapp/pages/update.dart';

class WhtsappHp extends StatefulWidget {
  const WhtsappHp({super.key});

  @override
  State<WhtsappHp> createState() => _WhtsappHpState();
}

class _WhtsappHpState extends State<WhtsappHp> {
  final List<String> _titles = ['WhatsApp', 'Updates', 'Communities', 'Calls'];
  final List<Widget> _pages = [
    HomeWidget(),
    UpdatePage(),
    CommunityPage(),
    CallPage(),
  ];
  final List<List<Widget>> _actions = [
    // Actions for the "Chats" tab
    [
      IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
      IconButton(icon: Icon(Icons.search), onPressed: () {}),
      IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
    ],
    // Actions for the "Updates" tab
    [
      IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
      IconButton(icon: Icon(Icons.settings), onPressed: () {}),
    ],
    // Actions for the "Communities" tab
    [IconButton(icon: Icon(Icons.group_add), onPressed: () {})],
    // Actions for the "Calls" tab
    [
      IconButton(icon: Icon(Icons.add_call), onPressed: () {}),
      IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
    ],
  ];
  int _selectedIndex = 0;
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: _actions[_selectedIndex],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_sharp),
            label: "Update",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_3),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
        onTap: _onTabTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
