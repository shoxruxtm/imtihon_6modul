import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_6modul/src/widgets/custom_button.dart';
import 'package:imtihon_6modul/src/widgets/text.dart';

import '../widgets/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                image: AssetImage("assets/images/undraw_city_life_gnpr 1.png")),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  MyText(
                    text: "Let's",
                    size: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1F4C6B),
                  ),
                  SizedBox(width: 10),
                  MyText(
                    text: "Sign In",
                    size: 25,
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
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 70,
                child: MyTextFields(
                  hintText: "Password",
                  suffixIcon: Icon(CupertinoIcons.lock),
                  helperText: "Forgot password?",
                  counterText: "Show password",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 100,
                child: MyTextFields(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.mail_outline),
                  validator: (String? value) {},
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
                  text: "Login",
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 2,
                    width: 130,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFECEDF3),
                      ),
                    ),
                  ),
                  MyText(
                    text: "OR",
                    color: Color(0xFFA1A5C1),
                  ),
                  SizedBox(
                    height: 2,
                    width: 130,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFECEDF3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage("assets/images/Google - normal.png"),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(160, 70)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF5F4F8)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage("assets/images/Facebook - normal.png"),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(160, 70)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF5F4F8)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: "Don't have an account? ",
                  font: "Lato",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF53587A),
                ),
                MyText(
                  text: "Register",
                  font: "Lato",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1F4C6B),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
