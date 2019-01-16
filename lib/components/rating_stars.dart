import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {

  final double rate;
  final Color color = Colors.brown;

  const RatingStars({
    @required this.rate,
  }) : assert(rate != null);

  Widget _stars() {
    if (rate > 4.8) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
        ],
      );
    } else if (rate > 4.2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_half, color: color,),
        ],
      );
    } else if (rate > 3.8) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 3.2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_half, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 2.8) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 2.2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_half, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 1.8) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 1.2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star_half, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 0.8) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else if (rate > 0.3) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star_half, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
          Icon(Icons.star_border, color: color,),
        ],
      );
    }
  }

  Widget _buildStars() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(rate.toString()),
        ),
        _stars(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildStars();
  }
}
