import 'package:flutter/material.dart';
import 'package:twitter_clone/tweet.dart';

void main() {
  runApp(const MaterialApp(home: Tweet()));
}

class TwitterHome extends StatelessWidget {
  const TwitterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rohit",style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
