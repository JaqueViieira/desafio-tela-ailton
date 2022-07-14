import 'package:flutter/material.dart';

import 'custom_card.dart';

class DevicesGrid extends StatelessWidget {
  const DevicesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.1,
      crossAxisCount: 2,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      children: [
        CustomCard(
          icon: const Icon(
            Icons.light,
            color: Colors.white,
            size: 35,
          ),
          title: "Lamp",
          subtitle: "OPONED",
          isSwitch: true,
        ),
        CustomCard(
          icon: const Icon(
            Icons.router_rounded,
            color: Colors.blue,
            size: 35,
          ),
          title: "Router",
          subtitle: "CLOSED",
        ),
        CustomCard(
          icon: const Icon(
            Icons.air,
            color: Colors.blue,
            size: 35,
          ),
          title: "Air",
          subtitle: "CLOSED",
        ),
        CustomCard(
          icon: const Icon(
            Icons.room_preferences,
            color: Colors.blue,
            size: 35,
          ),
          title: "Fridge",
          subtitle: "CLOSED",
        ),
      ],
    );
  }
}
