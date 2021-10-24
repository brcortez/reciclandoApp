import 'package:ReciclandoAndo/src/controllers/controller_center/center_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

//Diseño de la pantalla cambio de contraseña(Reciclador)

class RecyclerPasswordPage extends StatefulWidget {
  @override
  _RecyclerPasswordPageState createState() => _RecyclerPasswordPageState();
}

class _RecyclerPasswordPageState extends State<RecyclerPasswordPage> {
  final _centerSetttingsController = CenterSettingsController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _centerSetttingsController.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contraseña'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: _inputs(),
            ),
          ],
        )
        // SingleChildScrollView(
        //     child: ConstrainedBox(
        //   constraints:
        //       BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        //   child: _inputs(),
        // )),
        );
  }

  Widget _inputs() {
    return Column(
      children: [
        _inputCurrentPassword(),
        _inputNewPassword(),
        _inputConfirmationPassword(),
        Expanded(child: SizedBox()),
        _btnPassword(),
      ],
    );
  }

  Widget _inputCurrentPassword() {
    return Container(
      padding:
          EdgeInsets.only(right: 20.0, left: 20.0, top: 35.0, bottom: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          hintText: 'Contraseña Actual',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          prefixIcon: Icon(Icons.vpn_key_rounded),
        ),
      ),
    );
  }

  Widget _inputNewPassword() {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          hintText: 'Contraseña Nueva',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          prefixIcon: Icon(Icons.vpn_key_rounded),
        ),
      ),
    );
  }

  Widget _inputConfirmationPassword() {
    return Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          hintText: 'Confirmar Contraseña',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          prefixIcon: Icon(Icons.vpn_key_rounded),
        ),
      ),
    );
  }

  Widget _btnPassword() {
    return Container(
      margin: EdgeInsets.only(
          top: 20.0, bottom: MediaQuery.of(context).size.height * 0.05),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('CONFIRMAR  '),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ),
      ),
    );
  }
}
