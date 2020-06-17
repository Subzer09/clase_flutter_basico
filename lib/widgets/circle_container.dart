
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {

  final Widget child;
  final double size;

  CircleContainer(
    {@required this.child, this.size}) : 
    assert(child != null),
    assert(size != null && size >= 55);



  @override
  Widget build(BuildContext context) {
    return Container(
          width: size,
          height: size,
          alignment: Alignment.center,
          child: Center(
            child : this.child
          ),
          decoration: BoxDecoration(

            color: Color(0xfff0f0f0),
            // borderRadius: BorderRadius.circular(150),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color : Colors.black26, blurRadius: 10, offset: Offset(5, 5)),
              // BoxShadow(color : Colors.red.withOpacity(0.5), blurRadius: 20, offset: Offset(10, 10)),
            ]

          ),
    );
  }

}