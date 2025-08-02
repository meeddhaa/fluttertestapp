import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  int count = 0;
  SecondPage({super.key, this.count = 0});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.plus_one),
            onPressed: () {
              // Action for settings button
              setState(() {
                widget.count++;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Action for info button
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the StatefulWidget! Count: ${widget.count}',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}