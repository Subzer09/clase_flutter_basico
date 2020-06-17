
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vscode/widgets/circle_container.dart';

class Avatar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          SvgPicture.asset('assets/icons/avatar.svg'),
          Positioned(
            child:  CircleContainer(
              child: Icon(Icons.edit),
              size: 60,
            ),
            right: 0,
            top: 0,
          )
        ],
      ),
    );

  }
}