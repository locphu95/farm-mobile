import 'package:farm_mobile/core/widgets/base_auth_widget.dart';
import 'package:farm_mobile/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController trypasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double imageSize;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      imageSize = (size.width * 0.6);
    } else {
      imageSize = (size.height * 0.4);
    }
    return Scaffold(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // width: size.width,
              height: imageSize,
              child: const BaseScreenAuth(
                  title: "Sign Up", supTitle: "Let’s create your account!"),
            ),
            Expanded(
              child: ListView(shrinkWrap: true, children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
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
                            labelText: 'User Name',
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
                        child: TextField(
                          obscureText: true,
                          controller: trypasswordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Try Password',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextField(
                          obscureText: true,
                          controller: trypasswordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Phone',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextField(
                          obscureText: true,
                          controller: trypasswordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Country',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text.rich(
                          TextSpan(
                              text: 'By tapping sign up you agree to the ',
                              children: [
                                TextSpan(
                                    text: 'Terms and Condition',
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent)),
                                TextSpan(text: ' and '),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent)),
                                TextSpan(text: ' of this app'),
                              ]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ButtonTextCustom(
                        nameButton: "Sign Up",
                        width: size.width,
                        height: 60,
                        fontSize: 25,
                        fontSizeRadius: 30,
                        backgroundColor: Colors.deepPurpleAccent,
                        function: () {
                          print(nameController.text);
                          print(passwordController.text);
                          print(trypasswordController.text);
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
                                child: const Text("or sign up with")),
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
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        const Positioned(
          top: 50,
          left: 20,
          child: ButtonIconCustom(),
        ),
      ]),
    );
  }
}
