import 'package:flutter/material.dart';
import 'package:flutter_button/widgets/app_btn_style.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login into your account" )),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}


class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);
   final texstyle = const TextStyle(
          fontSize: 15,
          color: Colors.black,
        );
 
  @override
  
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          FormWidget(),
          SizedBox(height: 20),
          Text("Texts must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here Text must be here ",
          style: texstyle),
          SizedBox(height: 20),
          Text("Anothers text must be here Another text must be here Another text must be here ",
          style: texstyle),
         
        ],
      ),
    );
  }
}



class FormWidget extends StatefulWidget {
  FormWidget({Key? key}) : super(key: key);

 
  @override
  State<FormWidget> createState() => _FormWidgetState();
}
 final textFieldDecoration = const InputDecoration(
            border: OutlineInputBorder(),
            isCollapsed: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            )
          );

class _FormWidgetState extends State<FormWidget> {

  final _loginTextController = TextEditingController();
  final _passTextController = TextEditingController();
  String? errorText = null;

void _auth (){
  final login = _loginTextController.text;
  final pass = _passTextController.text;

  if (login == 'admin' && pass == 'admin'){
    print("molodec");
    errorText = null;
  } else {
    errorText = 'Neverniy pass or log';

  }
}

void _resetPassword (){
  print("password");
}


  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              if (errorText != null)...[
                 Text("Neverniy Pass or LOg",
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),),
              ],
             
              SizedBox(height: 15),
        Text("Username"),
         SizedBox(height: 10,),

        TextField(
          controller: _loginTextController,
          decoration: textFieldDecoration,
        ),
        SizedBox(width: 20),
        SizedBox(height: 15),
        Text("Password"),
        SizedBox(height: 10,),

        TextField(
          controller: _passTextController,
          obscureText: true,
          decoration: textFieldDecoration,
        ),
        SizedBox(height: 15),

         Row(children: [
            TextButton(onPressed: _auth, 
            style: AppButtonStyle.LinkButton,

            child: Text("Login")
            ),
            SizedBox(width: 20,),
            TextButton(onPressed: _resetPassword, 
            style: AppButtonStyle.LinkButton,
            child: Text("Password")),
          ],)
      ],
    );
  }
}