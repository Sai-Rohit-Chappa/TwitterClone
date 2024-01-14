import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tweet extends StatefulWidget {
  const Tweet({super.key, required this.content});
  final String content;
  @override
  State<Tweet> createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 22.0,
                // backgroundImage:
                //     NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Rohit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '@chappa_sai',
                        )
                      ],
                    ),
                    Container(
                      constraints:
                          const BoxConstraints(maxHeight: 230, maxWidth: 270),
                      child: Text(widget.content),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.abc),
                        SizedBox(width: 50),
                        Icon(Icons.abc),
                        SizedBox(width: 50),
                        Icon(Icons.abc),
                        SizedBox(width: 50),
                        Icon(Icons.abc),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 15),

        const Divider(
          height: 1,
          thickness: 0.5,
        )
        // )
      ],
    );
  }
}
