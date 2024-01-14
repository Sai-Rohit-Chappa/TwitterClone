import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTweet extends StatelessWidget {
  const AddTweet({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.close),onPressed: (){
          Navigator.pop(context);
        },),
        
        // BackButton(onPressed: () {
        //   Navigator.pushReplacementNamed(context, '/');
        // }),
      ),
      body: Padding(padding: EdgeInsets.all(10.0),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            child: CircleAvatar(
                  radius: 22.0,
                  // backgroundImage:
                  //     NetworkImage('https://via.placeholder.com/150'),
                  backgroundColor: Colors.blue,
                ),
          ),
              SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Wrap(
                  children:[
                   Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: textController,
                      inputFormatters: [LengthLimitingTextInputFormatter(280)],
                      maxLines: null,
                      style:const TextStyle(
                        fontSize: 19
                       ),
                       decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's Happening?"
                       ),
                    ),
                  ),
                  ]
                )
              ],
            ),
          ),
        ],
      )
      ),
        
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      },
      shape: CircleBorder(),
      child: Icon(Icons.send),
      
      ),
      
    );
  }
}
