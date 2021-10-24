import 'package:flutter/material.dart';

//Diseño de la pantalla locaciones(Centro de Acopio)

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
      body: Column(
        children: [
          _search(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_location),
      ),
    );
  }

  Widget _search() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          hintText: 'Buscar Locación... ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
