import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 700,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                radius: 30.0,
                // backgroundImage:
                //     NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.blue,
              ),
                  
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Rohit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '@chappa_sai',
                            )
                          ],
                        ),
                        Container(
                          constraints:
                              BoxConstraints(maxHeight: 230, maxWidth: 270),
                          child: Text("edk  lbcdjbjkgfedighkgfhcvjhjdbdbjhv"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10), 
              Divider(
                height: 1,
                thickness: 0.5,
              )
              ,Image.network("https://cdn-icons-png.flaticon.com/512/2919/2919906.png")
            ],
          ),
        ));
  }
}
