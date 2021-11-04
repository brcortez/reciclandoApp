import 'package:ReciclandoAndo/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CenterThemePage extends StatefulWidget {
  CenterThemePage({Key? key}) : super(key: key);

  @override
  _CenterThemePageState createState() => _CenterThemePageState();
}

class _CenterThemePageState extends State<CenterThemePage> {
  int group = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Temas'),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: Text('Light'),
              value: 1,
              groupValue: group,
              onChanged: (value) {
                setState(() {
                  group = value as int;
                  theme.setTheme(ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.green,
                  ));
                });
              }),
          RadioListTile(
              title: Text('Dark'),
              value: 2,
              groupValue: group,
              onChanged: (value) {
                setState(() {
                  group = value as int;
                  theme.setTheme(ThemeData(
                      // colorScheme: ColorScheme.fromSwatch()
                      //     .copyWith(secondary: Colors.green),
                      accentColor: Colors.green,
                      brightness: Brightness.dark,
                      primarySwatch: Colors.green));
                });
              })
        ],
      ),
    );
  }
}
