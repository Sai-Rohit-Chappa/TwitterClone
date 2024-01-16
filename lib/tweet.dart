import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:like_button/like_button.dart';

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
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/retweet.svg'),
                        SizedBox(width: 50),
                        SvgPicture.asset('assets/comment.svg'),
                        SizedBox(width: 50),
                        LikeButton(size: 20),
                        SizedBox(width: 50),
                        SvgPicture.asset('assets/delete.svg',height: 15,width: 15,),
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
