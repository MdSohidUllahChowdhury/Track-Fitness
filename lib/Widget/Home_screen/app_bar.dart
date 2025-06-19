import 'package:flutter/material.dart';
class Bar{
static customAppBar(
  void Function()? rightBottomPath,
  void Function()? leftBottomPath,
  IconData rightBottomIcon,
  IconData leftBottomIcon,
) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
        onPressed: leftBottomPath,
        icon: Icon(
          leftBottomIcon,
          color: Colors.white,
          size: 40,
        )),
    actions: [
      IconButton(
          onPressed: rightBottomPath,
          icon: Icon(
            rightBottomIcon,
            color: Colors.white,
            size: 40,
          ))
    ],
  );
}
}
