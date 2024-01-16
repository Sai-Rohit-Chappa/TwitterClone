import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:twitter_clone/add_tweet.dart';
import 'package:twitter_clone/tweet.dart';

void main() {
  runApp( MaterialApp(
    routes:{
      '/':(context) => TwitterHome(),
      '/add':(context) => AddTweet()
    }
  ));
}

class TwitterHome extends StatefulWidget {
  const TwitterHome({super.key});

  @override
  State<TwitterHome> createState() => _TwitterHomeState();
}

class _TwitterHomeState extends State<TwitterHome> {
  final List<String> items = ["Item 1", "Itwuirsvfbifvhgjdlewkbjkehcibdcdjdjbchdbcisobvcljdchvdhskjchgdshjhbeujgvcfhhdcouvckjbcvwdebvem 2", "Iteoutyhguftydtfghuygitufydrtuyitum 3", "Item 4", "Itemiofuewjhkbdlejbdlbevkjldkhjjhjvgjjhghcfjhgfccjhfgjhgfgxhgfgxchgfdxvgcf 5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rohit",style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(itemCount: items.length,itemBuilder: (context,index){

          
          return Tweet(content:items[index]);

      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        
        onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddTweet()),
  );

        },
        shape: const CircleBorder(),
        child: 
        const Icon(Icons.add),
      ),
        
      
    );
  }
}
