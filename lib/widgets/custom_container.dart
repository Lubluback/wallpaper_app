import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.img, required this.text});
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      // height: 50,

      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: NetworkImage(
              img,
            ),
            opacity: 0.7,
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
      )),
    );
  }
}
