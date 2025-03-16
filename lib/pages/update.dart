import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final List<Map<String, String>> items = [
    {
      "name": "Instagram ",
      "message": "10M follower",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "WhatsAPP ",
      "message": "2M follower",
      "avatar": "https://via.placeholder.com/50",
    },
    {
      "name": "MarketNepal ",
      "message": "2.3k follower",
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
          children: [
            Divider(),
            Text(
              'Status',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(8),
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 5,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("$index")),
                  );
                },
              ),
            ),
            Divider(),
            SizedBox(height: 8),
            Text(
              'Channels',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Stay updated on topics that matter to you. Find channels to follow below.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Find channels to follow.',
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(items[index]["avatar"]!),
                    ),
                    title: Text(
                      items[index]["name"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(items[index]["message"]!),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          202,
                          245,
                          152,
                        ),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.green),
                      ),
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
