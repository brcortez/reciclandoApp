import 'package:flutter/material.dart';

class CenterLocationsPage extends StatefulWidget {
  CenterLocationsPage({Key? key}) : super(key: key);

  @override
  _CenterLocationsPageState createState() => _CenterLocationsPageState();
}

class _CenterLocationsPageState extends State<CenterLocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locaciones'),
      ),
    );
  }
}
