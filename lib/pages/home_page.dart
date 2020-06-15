
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/circle_container.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items : [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
      ]),
      body: SafeArea(
        top: true,
        bottom: false,
        child : Container(
          width: double.infinity,
          color : Colors.white,
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Bienvenido", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),),
              Text("Jimmy Niels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xffaaaaaa),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                        Text("14 likes"),
                        SizedBox(width: 10),
                        CircleContainer(child: Icon(Icons.add), width: 55, height: 55,),
                    ],
                  ),
                 
                  CircleContainer(child: Icon(Icons.remove), width: 55, height: 55,),
                ],
              )
            ],
          )
 
        )
      )
    );
  }

  
}