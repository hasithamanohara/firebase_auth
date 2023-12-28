import 'package:fireflutter/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //instance for sign out
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          actions: [
            ElevatedButton(
              onPressed: () async {
                await _auth.signOut();
                print("sign out succefully");
              },
              child: const Icon(Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
