import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 1, 59, 107),
            const Color.fromARGB(255, 6, 85, 150),
          ],
        ),
      ),
      child: Center(
        child: Text('This is for distraction', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
