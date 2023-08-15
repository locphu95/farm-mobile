import 'package:farm_mobile/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class BaseScreenAuth extends StatelessWidget {
  final String title;
  final String supTitle;
  const BaseScreenAuth(
      {super.key, required this.title, required this.supTitle});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/top_widget.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                supTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
