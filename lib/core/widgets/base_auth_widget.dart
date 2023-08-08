import 'package:flutter/cupertino.dart';

class BaseScreenAuth extends StatelessWidget {
  final title;
  final supTitle;

  const BaseScreenAuth({super.key, this.title, this.supTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/top_widget.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SizedBox()],
      ),
    );
  }
}
