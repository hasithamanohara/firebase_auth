import 'package:fireflutter/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //ref for the log in statte
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Login'),
      ),
      body: ElevatedButton(onPressed: () async{  
        dynamic result= await _auth.signInAnonymasly();
        if(result == Null){
          print("log in error");
        }else{
          print("log in success");
          print(result.uid);
        }
      },
      child:const Text("Sing in aonymasly"),)
    );
  }
}