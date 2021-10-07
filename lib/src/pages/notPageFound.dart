import 'package:flutter/material.dart';

class NotPageFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not Page Found'),
              Text('Error 404'),
            ],
          ),
        ));
  }
}
