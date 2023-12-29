import 'package:fireflutter/constants/colors.dart';
import 'package:fireflutter/constants/description.dart';
import 'package:fireflutter/constants/styles.dart';
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
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text('Login'),
        titleTextStyle: appbarTextStyle,
        backgroundColor: bgBlack,
      ),
      body: Padding(
        padding:const EdgeInsets.only(top:1, right: 3, left: 10),
        child: Column(
          children: [
            //description
            const Text(
              description,
              style: descriptionStyle,
            ),
            Image.asset('assets/images/man.png', height: 200, width: 200,),
            const Form(
                child:Column(
              children: [
                //email
                //pasword
                //google
                //register
                //button
                //anonymas
              ],
            ))
          ],
        ),
      ),
    );
  }
}

// body: ElevatedButton(onPressed: () async{
//         dynamic result= await _auth.signInAnonymasly();
//         if(result == Null){
//           print("log in error");
//         }else{
//           print("log in success");
//           print(result.uid);
//         }
//       },
//       child:const Text("Sing in aonymasly"),)
