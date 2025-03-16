import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<Map<String, String>> chats = [
    {
      "name": "Rajesh Kumar",
      "message": "What's up?",
      "time": "10:30 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Amit Singh",
      "message": "See you soon!",
      "time": "9:45 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Priya Sharma",
      "message": "Can't wait to meet!",
      "time": "8:20 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Sita Devi",
      "message": "Hope you have a great day!",
      "time": "Yesterday",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Vikram Yadav",
      "message": "Long time no see!",
      "time": "Just now",
      "avatar": "https://via.placeholder.com/50",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(chats[index]["avatar"]!),
                    ),
                    title: Text(
                      chats[index]["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(chats[index]["message"]!),
                    trailing: Text(
                      chats[index]["time"]!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
