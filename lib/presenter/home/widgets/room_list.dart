import 'package:flutter/material.dart';

class RoomList extends StatelessWidget {
  const RoomList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text(
          "Living Room",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          " Kitchen",
          style: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          "Dinning",
          style: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
