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

  //global key for form identify
  final _formKey = GlobalKey<FormState>();
  //variable for store valuve of password and email address
  String email ="";
  String password ="";

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
        padding: const EdgeInsets.only(top: 1, right: 3, left: 10),
        child: Column(
          children: [
            //description
            const Text(
              description,
              style: descriptionStyle,
            ),
            const SizedBox(
              height:25,
            ),
            Center(
                child: Image.asset('assets/images/man.png',
                    height: 180, width: 180)),
            Form(
                child: Column(
                  key: _formKey,
              children: [
                //email
                TextFormField(
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'please enter valid text';
                    }
                    return null;
                  },
                ),
                //pasword
                TextFormField(),
                //google
                //register
                //log in button
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
