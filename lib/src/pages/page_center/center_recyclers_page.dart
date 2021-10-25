import 'package:ReciclandoAndo/src/controllers/controller_center/center_add_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla recicladores(Centro de Acopio)

class CenterRecyclersPage extends StatefulWidget {
  @override
  _CenterRecyclersPageState createState() => _CenterRecyclersPageState();
}

class _CenterRecyclersPageState extends State<CenterRecyclersPage> {
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
        title: Text('Recicladores'),
      ),
      body: Column(
        children: [
          _search(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _centerAddController.newRecycler,
        child: Icon(Icons.person_add_alt_1),
      ),
    );
  }

  Widget _search() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          hintText: 'Buscar Reciclador... ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  //Widget _listRecycler() {}
}
