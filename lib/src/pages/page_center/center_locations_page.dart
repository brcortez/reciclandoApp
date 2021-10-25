import 'package:ReciclandoAndo/src/controllers/controller_center/center_add_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla locaciones(Centro de Acopio)

class CenterLocationsPage extends StatefulWidget {
  @override
  _CenterLocationsPageState createState() => _CenterLocationsPageState();
}

class _CenterLocationsPageState extends State<CenterLocationsPage> {
  final _centerAddController = CenterAddController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _centerAddController.init(context);
    });
  }

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
        onPressed: _centerAddController.newLocation,
        child: Icon(Icons.add_location_alt_outlined),
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
