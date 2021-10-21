import 'package:ReciclandoAndo/src/controllers/recycler_update_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RecyclerUpdatePage extends StatefulWidget {
  @override
  _RecyclerUpdatePageState createState() => _RecyclerUpdatePageState();
}

class _RecyclerUpdatePageState extends State<RecyclerUpdatePage> {
  final _recyclerUpdateController = RecyclerUpdateController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _recyclerUpdateController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            _inputs(),
          ],
        ),
      ),
    );
  }

  Widget _inputs() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          _btnPhoto(),
          SizedBox(height: 25.0),
          _inputUserName(),
          _inputUserLastName(),
          _inputDocument(),
          _inputPhone(),
          SizedBox(height: 25.0),
          _btnRegister(),
        ],
      ),
    );
  }

  Widget _btnPhoto() {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.camera_alt,
        size: 30.0,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(40.0)),
        backgroundColor:
            MaterialStateProperty.all(Colors.green), // <-- Button color
      ),
    );
  }

  Widget _inputUserName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _recyclerUpdateController.nameRegisterController,
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Nombres',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget _inputUserLastName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _recyclerUpdateController.lastNameRegisterController,
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Apellidos',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  Widget _inputDocument() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _recyclerUpdateController.documentRegisterController,
        keyboardType: TextInputType.number,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: 'Cédula',
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.article),
        ),
      ),
    );
  }

  Widget _inputPhone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 5.0),
      child: TextField(
        controller: _recyclerUpdateController.phoneRegisterController,
        keyboardType: TextInputType.phone,
        maxLength: 10,
        decoration: InputDecoration(
          hintText: 'Teléfono',
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.phone),
        ),
      ),
    );
  }

  Widget _btnRegister() {
    String route = "registerUser";
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: _recyclerUpdateController.home,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
        child: Text('ACEPTAR'),
      ),
    );
  }
}
