import 'package:flutter/material.dart';

class CenterSettingsPage extends StatefulWidget {
  CenterSettingsPage({Key? key}) : super(key: key);

  @override
  _CenterSettingsPageState createState() => _CenterSettingsPageState();
}

class _CenterSettingsPageState extends State<CenterSettingsPage> {
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
            onTap: () {},
            title: Text('Contraseña'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.vpn_key_outlined,
            ),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Ayuda'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.help_outline_outlined,
            ),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Información'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.info_outline,
            ),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Idioma'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.language,
            ),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Tema'),
            minLeadingWidth: 10,
            leading: Icon(
              Icons.palette_outlined,
            ),
            trailing: Icon(Icons.chevron_right_outlined),
          ),
        ],
      ),
    );
  }
}
