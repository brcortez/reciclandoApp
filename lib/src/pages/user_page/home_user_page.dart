import 'package:ReciclandoAndo/src/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  final _userController = UserController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _userController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _userController.key,
      appBar: AppBar(
        leading: _menuDrawer(),
        automaticallyImplyLeading: false,
      ),
      drawer: _drawer(),
      body: Center(
        child: Text('User'),
      ),
    );
  }

  Widget _menuDrawer() {
    return GestureDetector(
      onTap: _userController.openDrawer,
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        alignment: Alignment.centerLeft,
        child: Image.asset(
          'assets/img/menu.png',
          width: 20,
          height: 20,
        ),
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
            onTap: _userController.updateUser,
            title: Text('Editar Perfil'),
            trailing: Icon(Icons.edit_outlined),
          ),
          ListTile(
            onTap: _userController.logout,
            title: Text('Cerrar Sesión'),
            trailing: Icon(Icons.logout_outlined),
          ),
        ],
      ),
    );
  }
}
