import 'package:flutter/material.dart';
import 'package:imtihon_6modul/src/screen/create_account.dart';

import 'screen/sign_in.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imtihon",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: CreateAccount(),
    );
  }
}
