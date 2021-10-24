import 'package:ReciclandoAndo/src/controllers/controller_recycler/recycler_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla del home(Reciclador)

class HomeRecyclerPage extends StatefulWidget {
  @override
  _HomeRecyclerPageState createState() => _HomeRecyclerPageState();
}

class _HomeRecyclerPageState extends State<HomeRecyclerPage> {
  final _recyclerController = RecyclerController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _recyclerController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _recyclerController.key,
      appBar: AppBar(
        leading: _menuDrawer(),
        title: Text('Reciclando Ando'),
        automaticallyImplyLeading: false,
      ),
      drawer: _drawer(),
      body: Center(
        child: Text('Recycler'),
      ),
    );
  }

  Widget _menuDrawer() {
    return GestureDetector(
      onTap: _recyclerController.openDrawer,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        alignment: Alignment.centerLeft,
        child: Icon(Icons.sort),
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
            onTap: _recyclerController.updateRecycler,
            title: Text('Editar Perfil'),
            leading: Icon(
              Icons.edit_outlined,
              color: Colors.green,
            ),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _recyclerController.settings,
            title: Text('Configuración'),
            leading: Icon(Icons.settings_outlined),
            minLeadingWidth: 10,
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: _recyclerController.logout,
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
