import 'package:farm_mobile/core/widgets/base_auth_widget.dart';
import 'package:farm_mobile/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
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
    return Scaffold(
      body: Stack(
        children: [Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              // width: size.width,
              height: imageSize,
              child: const BaseScreenAuth(
                  title: "Forgot Password", supTitle: "You’ll get messages soon on your e-mail address"),
            ),
            Container(                    padding: EdgeInsets.only(left: 15, right: 15,top:50),

              child: Column(
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
                  ),Container(
                    padding: const EdgeInsets.only(bottom: 20),

                    child: ButtonTextCustom(
                      nameButton: "Send",
                      width: size.width,
                      height: 60,
                      fontSize: 25,
                      fontSizeRadius: 30,
                      backgroundColor: Colors.deepPurpleAccent,
                      function: () {
                        print(nameController.text);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Does not have account?'),
                      TextButton(
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/register");
                          print("link to Register");
                          //signup screen
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),


          ],
        ), const Positioned(
          top: 50,
          left: 20,
          child: ButtonIconCustom(),
        ),]
      ),
    );
  }
}
