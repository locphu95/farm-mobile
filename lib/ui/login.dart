import 'package:farm_mobile/core/widgets/base_auth_widget.dart';
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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: size.width,
              height: imageSize,
              child: const BaseScreenAuth(title: "Login", supTitle: "Welcome")),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Login My App',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/forgot-pass");
                  print("link to Forgot Password");
                  //forgot password screen
                },
                child: const Text('Forgot Password',
                    style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Register',
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
          Container(
            alignment: Alignment.bottomCenter,
            //  padding: const EdgeInsets.all(10),
            child: const Text("Develop Loc"),
          ),
        ],
      ),
    );
  }
}
