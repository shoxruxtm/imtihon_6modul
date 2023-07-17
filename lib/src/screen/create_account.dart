import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_6modul/src/widgets/text.dart';
import 'package:imtihon_6modul/src/widgets/text_field.dart';

import '../widgets/custom_button.dart';
import '../widgets/validation.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    MyText(
                      text: "Create your ",
                      size: 22,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1F4C6B),
                    ),
                    MyText(
                      text: "account",
                      size: 22,
                      fontWeight: FontWeight.w800,
                      font: "Lato",
                      color: Color(0xFF1F4C6B),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: MyText(
                  text: "quis nostrud exercitation ullamco laboris nisi us",
                  size: 11,
                  color: Color(0xFF53587A),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 70,
                  child: MyTextFields(
                    hintText: "Full name",
                    suffixIcon: Icon(Icons.perm_identity),
                    validator: validateName,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  height: 70,
                  child: MyTextFields(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.mail_outline),
                    validator: validateEmail,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                    height: 100,
                    child: MyTextFields(
                      hintText: "Password",
                      suffixIcon: Icon(CupertinoIcons.lock),
                      helperText: "Terms of servise",
                      counterText: "hide password",
                      validator: validatePassword,
                    ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                  child: MyButton(
                    text: "Register",
                    onPressed: () {  },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
