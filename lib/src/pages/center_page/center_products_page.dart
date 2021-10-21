import 'package:flutter/material.dart';

class CenterProductsPage extends StatefulWidget {
  CenterProductsPage({Key? key}) : super(key: key);

  @override
  _CenterProductsPageState createState() => _CenterProductsPageState();
}

class _CenterProductsPageState extends State<CenterProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir Producto'),
      ),
    );
  }
}
