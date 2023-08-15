import 'package:farm_mobile/core/widgets/base_auth_widget.dart';
import 'package:farm_mobile/core/widgets/button_widget.dart';
import 'package:farm_mobile/core/widgets/checkbox_widget.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double imageSize;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      imageSize = (size.width * 0.6);
    } else {
      imageSize = (size.height * 0.4);
    }
    //  bool? isChecked = false;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                // width: size.width,
                height: imageSize,
                child: const BaseScreenAuth(
                    title: "Login", supTitle: "Hi, Welcome back!"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CheckBoxCustom(),
                              Text("Remember",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black))
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("/forgot-pass");
                              print("link to Forgot Password");
                              //forgot password screen
                            },
                            child: const Text('Forgot Password?',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45)),
                          ),
                        ],
                      ),
                    ),
                    ButtonTextCustom(
                      nameButton: "Log In",
                      width: size.width,
                      height: 60,
                      fontSize: 25,
                      fontSizeRadius: 30,
                      backgroundColor: Colors.deepPurpleAccent,
                      function: () {
                        print('click login');
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        children: [
                          const Expanded(
                              child: Divider(
                            color: Colors.black,
                          )),
                          Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: const Text("or log in with ")),
                          const Expanded(
                              child: Divider(
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonTextCustom(
                          nameButton: "Google",
                          width: size.width * 0.4,
                          height: 60,
                          fontSize: 20,
                          fontSizeRadius: 30,
                          textColor: Colors.black,
                          function: () {
                            print('click login GG');
                          },
                        ),
                        ButtonTextCustom(
                          nameButton: "Facebook",
                          width: size.width * 0.4,
                          height: 60,
                          fontSize: 20,
                          fontSizeRadius: 30,
                          backgroundColor: Colors.blueAccent,
                          function: () {
                            print('click login FB');
                          },
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('Does not have account?'),
                          TextButton(
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.deepPurpleAccent),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed("/register");
                              print("link to Register");
                              //signup screen
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox()
            ],
          ),
          const Positioned(
            top: 50,
            left: 20,
            child: ButtonIconCustom(),
          ),
        ],
      ),
    );
  }
}
