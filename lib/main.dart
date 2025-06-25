
import 'package:flutter/material.dart';

void main() => runApp(StripeMowApp());

class StripeMowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StripeMow',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> patterns = ['Straight', 'Diagonal', 'Checkerboard'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StripeMow Patterns')),
      body: ListView.builder(
        itemCount: patterns.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(patterns[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}
