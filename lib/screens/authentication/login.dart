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
  // ignore: unused_field
  final AuthServices _auth = AuthServices();

  //global key for form identify
  final _formKey = GlobalKey<FormState>();
  //variable for store valuve of password and email address
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text('Login'),
        titleTextStyle: appbarTextStyle,
        backgroundColor: bgBlack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 1, right: 3, left: 10),
          child: Column(
            children: [
              //description
              const Text(
                description,
                style: descriptionStyle,
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Image.asset('assets/images/man.png',
                    height: 180, width: 180),
              ),
              Form(
                child: Column(
                  key: _formKey,
                  children: [
                    //email
                    TextFormField(
                      validator: (value) =>
                          value?.isEmpty == true ? "enter valid one" : null,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    //pasword
                    TextFormField(
                      validator: (value) =>
                          value!.length < 6 ? "please enter password" : null,
                      onChanged: (value) => setState(() {
                        password = value;
                      }),
                    ),
                    //google
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "log in with social account",
                      style: descriptionStyle,
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    GestureDetector(
                      //sign in with google
                      onTap: () {},
                      child: Center(
                        child: Image.asset('assets/images/google.png',
                            height: 70, width: 100),
                      ),
                    ),
                    //register
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Dou you have an account?",
                            style: descriptionStyle,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            //go to the resgister page
                            onTap: () {},
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //log in button
                    GestureDetector(
                      //method for log in user
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: textLight,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.orange)),
                        child: const Center(
                          child: Text("Log In"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //anonymas
                    GestureDetector(
                      //method for log in user
                      onTap: () {},
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: textLight,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: Colors.orange)),
                        child: const Center(
                          child: Text("Log In As Guest"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
