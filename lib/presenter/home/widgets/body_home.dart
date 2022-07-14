import 'package:flutter/material.dart';

import 'custom_header.dart';
import 'devices_grid.dart';
import 'play_pause.dart';
import 'room_list.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          CustomHeader(),
          SizedBox(height: 10),
          RoomList(),
          DevicesGrid(),
          PlayPause(),
        ],
      ),
    );
  }
}
