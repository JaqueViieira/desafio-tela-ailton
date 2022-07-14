import 'package:flutter/material.dart';

class PlayPause extends StatelessWidget {
  const PlayPause({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(
          7.9,
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/coldplay.png",
              ),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  "Everyday Life",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Coldplay",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.fast_rewind_sharp,
              color: Colors.white,
              size: 28,
            ),
            Icon(
              Icons.pause,
              color: Colors.white,
              size: 28,
            ),
            Icon(
              Icons.fast_forward,
              color: Colors.white,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
