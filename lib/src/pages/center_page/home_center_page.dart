import 'package:ReciclandoAndo/src/controllers/center_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeCenterPage extends StatefulWidget {
  @override
  _HomeCenterPageState createState() => _HomeCenterPageState();
}

class _HomeCenterPageState extends State<HomeCenterPage> {
  final _centerController = CenterController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _centerController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _centerController.key,
      appBar: AppBar(
        title: Text(
          'Reciclando Ando',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: _menuDrawer(),
        automaticallyImplyLeading: false,
      ),
      drawer: _drawer(),
      body: Center(
        child: Text('Center'),
      ),
    );
  }

  Widget _menuDrawer() {
    return GestureDetector(
      onTap: _centerController.openDrawer,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        alignment: Alignment.centerLeft,
        child: Icon(Icons.sort, color: Colors.black),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nombre Usuario',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  maxLines: 1,
                ),
                Text(
                  'Telefono',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  maxLines: 1,
                ),
                Container(
                  height: 60.0,
                  margin: EdgeInsets.only(top: 10.0),
                  child: FadeInImage(
                    image: AssetImage('assets/img/no-image.jpg'),
                    fit: BoxFit.contain,
                    fadeInDuration: Duration(milliseconds: 50),
                    placeholder: AssetImage('assets/img/no-image.jpg'),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: _centerController.updateCenter,
            title: Text('Editar Perfil'),
            leading: Icon(
              Icons.edit_outlined,
              color: Colors.green,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _centerController.products,
            title: Text('Añadir Producto'),
            leading: Icon(
              Icons.add_shopping_cart,
              color: Colors.purple,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _centerController.recyclers,
            title: Text('Recicladores'),
            leading: Icon(
              Icons.delivery_dining_outlined,
              color: Colors.orange,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _centerController.locations,
            title: Text('Locaciones'),
            leading: Image.asset(
              'assets/img/icon_googleMap.png',
              width: 21.0,
              height: 21.0,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _centerController.settings,
            title: Text('Configuración'),
            leading: Icon(
              Icons.settings_outlined,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _centerController.logout,
            title: Text('Cerrar Sesión'),
            leading: Icon(
              Icons.power_settings_new_outlined,
              color: Colors.red,
            ),
            minLeadingWidth: 10,
          ),
        ],
      ),
    );
  }
}
