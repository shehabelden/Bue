import 'package:bue/login/base/cubt/cubt.dart';
import 'package:bue/login/base/state/state.dart';
import 'package:bue/style/button/button.dart';
import 'package:bue/style/text/StaticText.dart';
import 'package:bue/style/text_field/TextFieldAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
TextEditingController username=TextEditingController();
TextEditingController password=TextEditingController();
List loginController=[username,password];
List labelList=[StaticText.username,StaticText.password];
class LoginBadge extends StatelessWidget {
  const LoginBadge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubt=LoginCubt.get(context);
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          textFieldAuth(
            StaticText.username,
           StaticText.signIn,
            MediaQuery.of(context).size.height,
      ),
          textFieldAuth(
            StaticText.password,
            StaticText.signIn,
            MediaQuery.of(context).size.height,
          ),
          BlocConsumer<LoginCubt,BaseState>(
            listener: (c,i){},
            builder: (context,i) {
              return InkWell(
                onTap:(){
                  cubt.loginMethod(username.text,password.text);
                },
                child: authButton(
                  MediaQuery.of(context).size.height,
                  MediaQuery.of(context).size.width,
                  StaticText.signIn,
                 ),
              );
            }
          ),
        ],
      ),
    );
  }
}