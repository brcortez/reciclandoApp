import 'package:ReciclandoAndo/src/controllers/controller_center/center_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla añadir productos(Centro de Acopio)

class CenterProductsPage extends StatefulWidget {
  @override
  _CenterProductsPageState createState() => _CenterProductsPageState();
}

class _CenterProductsPageState extends State<CenterProductsPage> {
  final _centerController = CenterController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _centerController.init(context);
    });
  }

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir Producto'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: _inputs(),
          ),
        ],
      ),
    );
  }

  Widget _inputs() {
    return Column(
      children: [
        _inputNameProduct(),
        _inputDescriptionProduct(),
        _inputPointProduct(),
        _photosProduct(),
        _dropDownProduct(),
        Expanded(child: SizedBox()),
        _btnRegisterProduct(),
      ],
    );
  }

  Widget _inputNameProduct() {
    return Container(
      padding: EdgeInsets.only(left: 38.0, right: 38.0, top: 20.0),
      child: TextField(
        //controller: _userUpdateController.nameRegisterController,
        textCapitalization: TextCapitalization.words,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: 'Nombre del Producto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.description_outlined),
        ),
      ),
    );
  }

  Widget _inputDescriptionProduct() {
    return Container(
      padding: EdgeInsets.only(left: 38.0, right: 38.0, top: 20.0),
      child: TextField(
        //controller: _userUpdateController.nameRegisterController,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          hintText: 'Descripción del Producto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.content_paste),
        ),
      ),
    );
  }

  Widget _inputPointProduct() {
    return Container(
      padding: EdgeInsets.only(left: 38.0, right: 38.0, top: 20.0),
      child: TextField(
        //controller: _userUpdateController.nameRegisterController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: 'Puntos del Producto',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.all(15.0),
          prefixIcon: Icon(Icons.local_play_outlined),
        ),
      ),
    );
  }

  Widget _photosProduct() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _btnPhoto(),
        _btnPhoto(),
        _btnPhoto(),
      ],
    );
  }

  Widget _btnPhoto() {
    return Container(
      padding: EdgeInsets.only(right: 15.0, top: 15.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(
          Icons.camera_alt,
          size: 30.0,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
          padding: MaterialStateProperty.all(EdgeInsets.all(30.0)),
          backgroundColor:
              MaterialStateProperty.all(Colors.green), // <-- Button color
        ),
      ),
    );
  }

  Widget _dropDownProduct() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.expand_more_outlined),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.green,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _btnRegisterProduct() {
    return Container(
      margin: EdgeInsets.only(
          top: 20.0, bottom: MediaQuery.of(context).size.height * 0.05),
      child: ElevatedButton(
        onPressed: _centerController.home,
        child: Text('AÑADIR PRODUCTO'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
