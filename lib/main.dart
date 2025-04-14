import 'package:flutter/material.dart';
import 'components/topbar.dart';
import 'components/middlebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: Scaffold(
        appBar: AppBar(title: Text('Roll Dice App')),
        body: SingleChildScrollView(
          child: Column(children: [TopBar(), MiddleBar()]),
        ),
      ),
    );
  }
}
