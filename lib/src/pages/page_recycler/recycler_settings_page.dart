import 'package:ReciclandoAndo/src/controllers/controller_recycler/recycler_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla configuraciones(Reciclador)

class RecyclerSettingsPage extends StatefulWidget {
  @override
  _RecyclerSettingsPageState createState() => _RecyclerSettingsPageState();
}

class _RecyclerSettingsPageState extends State<RecyclerSettingsPage> {
  final _recyclerSetttingsController = RecyclerSettingsController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _recyclerSetttingsController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: SingleChildScrollView(
        child: _options(),
      ),
    );
  }

  Widget _options() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          ListTile(
            onTap: _recyclerSetttingsController.password,
            title: Text('Contraseña'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.vpn_key_outlined,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.chevron_right_outlined,
            ),
          ),
          ListTile(
            onTap: _recyclerSetttingsController.help,
            title: Text('Ayuda'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.help_outline_outlined,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.chevron_right_outlined,
            ),
          ),
          ListTile(
            onTap: _recyclerSetttingsController.information,
            title: Text('Información'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.info_outline,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.chevron_right_outlined,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Idioma'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.language,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.chevron_right_outlined,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text('Tema'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.palette_outlined,
              color: Colors.green,
            ),
            trailing: Icon(
              Icons.chevron_right_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
