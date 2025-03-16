import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          Center(
            child: Image.network(
              'data:image/png;base64,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',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Stay Connected with a community",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            width: 300,
            height: 100,
            child: Center(
              child: Text(
                "Communities bring memebers together in topic based groups,and make it easy to get admin annoucements.Any community you're added to will appear here",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See example communities',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 10),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                'Start your community',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
