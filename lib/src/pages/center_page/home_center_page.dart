import 'package:flutter/material.dart';

class HomeCenterPage extends StatefulWidget {
  @override
  _HomeCenterPageState createState() => _HomeCenterPageState();
}

class _HomeCenterPageState extends State<HomeCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Center'),
      ),
    );
  }
}
