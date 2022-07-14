import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatefulWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final Colors? color;

  bool isSwitch;
  bool isActive;

  CustomCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.color,
    this.isSwitch = false,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: widget.isActive ? Colors.blue : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(6, 6),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                widget.icon,
                Visibility(
                  visible: widget.isSwitch,
                  replacement: const Icon(
                    Icons.fiber_manual_record,
                    color: Colors.red,
                    size: 15,
                  ),
                  child: Switch(
                    value: false,
                    onChanged: (bool state) {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: widget.isActive ? Colors.white : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                widget.subtitle,
                style: TextStyle(
                    color: widget.isActive ? Colors.white : Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
