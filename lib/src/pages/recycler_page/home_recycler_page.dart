import 'package:flutter/material.dart';

class HomeRecyclerPage extends StatefulWidget {
  @override
  _HomeRecyclerPageState createState() => _HomeRecyclerPageState();
}

class _HomeRecyclerPageState extends State<HomeRecyclerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Recycler'),
      ),
    );
  }
}
