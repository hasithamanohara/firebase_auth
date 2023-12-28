import 'package:fireflutter/models/usermode.dart';
import 'package:fireflutter/screens/authentication/authenticate.dart';
import 'package:fireflutter/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //provides data
    final user = Provider.of<UserModel?>(context);
    if(user == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
