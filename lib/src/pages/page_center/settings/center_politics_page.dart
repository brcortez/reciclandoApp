import 'package:flutter/material.dart';

class CenterPoliticsPage extends StatelessWidget {
  const CenterPoliticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parrafo1 =
        "El presente Política de Privacidad establece los términos en que STACK usa y protege la información que es proporcionada por sus usuarios al momento de utilizar la aplicación móvil. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta opción para asegurarse que está de acuerdo con dichos cambios. ";

    final parrafo2 =
        "Nuestra aplicación móvil podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica. Así mismo cuando sea necesario podrá ser requerida información específica para procesar algún pedido.";

    final parrafo3 =
        "Nuestra aplicación móvil emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios.  Es posible que sean enviados correos electrónicos periódicamente con información publicitaria que consideremos relevante para usted o que pueda brindarle algún beneficio, estos correos electrónicos serán enviados a la dirección que usted proporcione y podrán ser cancelados en cualquier momento. STACK está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.";

    final parrafo4 =
        "Esta aplicación móvil pudiera contener enlaces a otros sitios que pudieran ser de su interés. Una vez que usted de clic en estos enlaces y abandone nuestra aplicación móvil, ya no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos responsables de los términos o privacidad ni de la protección de sus datos en esos otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad por lo cual es recomendable que los consulte para confirmar que usted está de acuerdo con estas.";

    final parrafo5 =
        "En cualquier momento usted puede restringir la recopilación o el uso de la información personal que es proporcionada a nuestro sitio web.  Cada vez que se le solicite rellenar un formulario, como el de alta de usuario, puede marcar o desmarcar la opción de recibir información por correo electrónico.  En caso de que haya marcado la opción de recibir nuestro boletín o publicidad usted puede cancelarla en cualquier momento. Esta compañía no venderá, cederá ni distribuirá la información personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial. STACK Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.";

    return Scaffold(
      appBar: AppBar(
        title: Text('Políticas'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            children: [
              Text(
                parrafo1,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                parrafo2,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                parrafo3,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                parrafo4,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                parrafo5,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
