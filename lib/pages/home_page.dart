
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/avatar.dart';
import '../widgets/button_menu.dart';
import '../widgets/circle_container.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonMenu(items: [
        BottonMenuItem(iconPath: 'assets/icons/open-menu.svg', label: 'Inicio'),
        BottonMenuItem(iconPath: 'assets/icons/historial.svg', label: 'Historial'),
        BottonMenuItem(iconPath: 'assets/icons/sheet.svg', label: 'Ofertas'),
        BottonMenuItem(iconPath: 'assets/icons/meter.svg', label: 'Mi perfil'),
      ],
      ),
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
              Avatar(),
              SizedBox(height: 20,),
              Text("Bienvenido", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
              Text("Jimmy Niels", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              FlatButton( 
                child: Text('UPLOAD', style: TextStyle(color: Colors.white),),
                color: Colors.blue, 
                onPressed: (){
                  print("Uploading");
                }
              ),
              CupertinoButton(
                child: Text('DESCARGAR'), 
                color: Colors.blue,
                minSize: 30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: () => print("Descargando"),
              )
            ],
          )
 
        )
      )
    );
  }

  
}