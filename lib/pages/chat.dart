import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<Map<String, String>> chats = [
    {
      "name": "Narad Saud",
      "message": "K ho bhaisaa",
      "time": "10:30 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Geeta Saud",
      "message": "Ma sanga majaar garnay kaam na gar",
      "time": "9:45 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Daddy",
      "message": "A+ chaheeyo malae ta",
      "time": "8:20 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Mummy",
      "message": "Gyaanu khana khaayaa hai",
      "time": "Yesterday",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Meri Jaan❤️ ",
      "message": "Merey Baabu ney thaana thaayaa 😍",
      "time": "Just now",
      "avatar": "https://via.placeholder.com/50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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
    );
  }
}
