import 'dart:math';

import 'package:flutter/material.dart';

class MiddleBar extends StatefulWidget {
  const MiddleBar({super.key});

  @override
  State<MiddleBar> createState() => _MiddleBarState();
}

class _MiddleBarState extends State<MiddleBar> {
  int number = Random().nextInt(5) + 1;
  void randomizeNumber() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    int nomor = Random().nextInt(5) + 1;
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(color: Colors.red),
      width: double.infinity,

      child: Center(
        child: Column(
          children: [
            if (nomor == 1)
              Image.asset('assets/dice-1.png')
            else if (nomor == 2)
              Image.asset('assets/dice-2.png')
            else if (nomor == 3)
              Image.asset('assets/dice-3.png')
            else if (nomor == 4)
              Image.asset('assets/dice-4.png')
            else if (nomor == 5)
              Image.asset('assets/dice-5.png')
            else if (nomor == 6)
              Image.asset('assets/dice-6.png')
            else
              Text('No dice'),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>((
                  states,
                ) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.grey;
                  }
                  return Colors.black;
                }),
              ),
              onPressed: randomizeNumber,
              child: Text('Randomize!', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
