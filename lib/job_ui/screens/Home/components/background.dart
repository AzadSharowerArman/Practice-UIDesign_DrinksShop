import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Color(0xfff4f4f4)),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.grey.withOpacity(0.3)),
          ),
        ],
      ),
      child,
    ]);
  }
}
