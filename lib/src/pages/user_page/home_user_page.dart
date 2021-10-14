import 'package:flutter/material.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('User'),
      ),
    );
  }
}
