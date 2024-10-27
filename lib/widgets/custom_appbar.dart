import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        //text: 'Hello ',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(text: 'Wallpaper', style:  TextStyle(color: Colors.black87)),
          TextSpan(text: ' Hub',   style: TextStyle(color: Colors.blue),),
        ],
      ),
    );
  }
}
