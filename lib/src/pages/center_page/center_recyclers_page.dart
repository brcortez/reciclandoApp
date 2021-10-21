import 'package:flutter/material.dart';

class CenterRecyclersPage extends StatefulWidget {
  CenterRecyclersPage({Key? key}) : super(key: key);

  @override
  _CenterRecyclersPageState createState() => _CenterRecyclersPageState();
}

class _CenterRecyclersPageState extends State<CenterRecyclersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recicladores'),
      ),
    );
  }
}
