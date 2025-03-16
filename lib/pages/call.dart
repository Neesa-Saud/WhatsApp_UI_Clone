import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final List<Map<String, String>> calls = [
    {
      "name": "Narad Saud",
      "time": "10:30 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Geeta Saud",
      "time": "9:45 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Daddy",
      "time": "8:20 AM",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Mummy",
      "time": "Yesterday",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "Meri Jaan❤️ ",
      "time": "13th march , 12:00 PM",
      "avatar": "https://via.placeholder.com/50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: 3),
            Text(
              'Favourite',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 13),
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.green, // Light red circle
                  radius: 20,
                  child: Icon(Icons.favorite, size: 24, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  'Add favourite',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 13),
            Text(
              'Recent',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: calls.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(calls[index]["avatar"]!),
                    ),
                    title: Text(
                      calls[index]["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(calls[index]["time"]!),
                    trailing: Icon(Icons.call),
                  );
                },
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
