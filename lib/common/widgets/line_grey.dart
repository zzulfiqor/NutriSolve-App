import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LineGrey extends StatelessWidget {
  const LineGrey({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(.5)),
    );
  }
}
