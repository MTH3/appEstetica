import 'package:app_estetica/custom_widgets/text_widgets/custom_text_form.dart';
import 'package:app_estetica/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical * 15,
                bottom: SizeConfig.safeBlockVertical * 5,
              ),
              child: SvgPicture.asset(
                "assets/images/barber.svg",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: CustomTextForm(
                dicaCampo: "Digite seu email",
                nomeCampo: "Email",
                icone: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                backGColor: Colors.blue[100],
                fill: true,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: CustomTextForm(
                dicaCampo: "Digite sua senha",
                nomeCampo: "Senha",
                esconderTexto: true,
                icone: Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                backGColor: Colors.blue[100],
                fill: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
