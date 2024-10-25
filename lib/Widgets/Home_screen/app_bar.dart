import 'package:flutter/material.dart';
class Bar{
static customAppBar(
  void Function()? rightBottomPath,
  void Function()? leftBottomPath,
  IconData rightBottomIcon,
  IconData leftBottomIcon,
) {
  return AppBar(
    toolbarHeight: 37,
    backgroundColor: Colors.black,
    leading: IconButton(
        onPressed: leftBottomPath,
        icon: Icon(
          leftBottomIcon,
          color: Colors.white,
        )),
    actions: [
      IconButton(
          onPressed: rightBottomPath,
          icon: Icon(
            rightBottomIcon,
            size: 30,
          ))
    ],
  );
}
}
