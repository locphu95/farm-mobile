import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  const CheckBoxCustom({super.key});
  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      onChanged: (bool? value) {
        setState(() {
          print(isChecked);
          isChecked = value!;
          print(isChecked);
        });
      },
    );
  }
}
