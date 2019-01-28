import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const BottomButton({
    @required this.child,
    this.onTap,
  }) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown,
          boxShadow: <BoxShadow> [
            BoxShadow(offset: Offset(0, 0), blurRadius: 8, color: Colors.black54, spreadRadius: 4)
          ],
        ),
        height: 50,
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.brown[400],
          splashColor: Colors.brown[200],
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
