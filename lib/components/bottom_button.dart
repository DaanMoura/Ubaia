import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Widget child;

  const BottomButton({
    @required this.child,
  }) : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.brown,
      child: Container(
        height: 50,
        child: InkWell(
          onTap: () {
            print("I was tapped");
          },
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
