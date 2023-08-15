import 'package:flutter/material.dart';

class ButtonTextCustom extends StatelessWidget {
  final String? nameButton;
  final double height;
  final double width;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? logoColor;
  final double? fontSizeRadius;
  final Function function;
  const ButtonTextCustom(
      {super.key,
      this.nameButton,
      required this.height,
      required this.width,
      this.fontSize,
      this.backgroundColor,
      this.textColor,
      this.logoColor,
      this.fontSizeRadius,required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(fontSizeRadius!),
          ),
        ),
        fixedSize: MaterialStateProperty.all(Size(width, height)),
        backgroundColor:
            MaterialStateProperty.all<Color>(backgroundColor ?? Colors.white),
      ),
      child: Text(
        nameButton!,
        style: TextStyle(
            fontSize: fontSize ?? 15, color: textColor ?? Colors.white),
      ),
      onPressed: (){
        function;
      },
    );
  }
}

class ButtonIconCustom extends StatelessWidget {
  const ButtonIconCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Icon(
      Icons.arrow_back_rounded,size: 20,color: Colors.black26,),
    );
      
     // ElevatedButton(
     // style: ElevatedButton.styleFrom(
      //  backgroundColor: Colors.white,
       // minimumSize: Size(45,40),
       // fixedSize: Size(45, 40),
      //  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
     // ),
     // onPressed: () {
    //    print("click button back");
   //   },
   //   child: const Icon(Icons.arrow_back_rounded),
  //  );
  }
}
