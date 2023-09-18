import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Animated_bottom extends StatefulWidget {
  const Animated_bottom({super.key});

  @override
  State<Animated_bottom> createState() => _Animated_bottomState();
}
class _Animated_bottomState extends State<Animated_bottom> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home,color: Colors.lightBlue),
      Icon(Icons.search,color: Colors.black),
      Icon(Icons.favorite,color: Colors.red),
      Icon(Icons.settings,color: Colors.black),
      Icon(Icons.person,color: Colors.blue)

    ];
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child:
              Text("Animated Bottom navigation",style: TextStyle(fontSize: 15))),backgroundColor: Colors.blueGrey),
      body:ListView(
        children:[
          Column(children: [
            Container(width: 400,height: 400,color: Colors.lightBlueAccent,),
            SizedBox(height: 4,),
            Container(width: 400,height: 400,color: Colors.indigo,),
          ]
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellow,
        height:60,
        index:index,
        items:items,
        onTap: (index) => setState(() => this.index=index
        ),
      ),

    );
  }
}
