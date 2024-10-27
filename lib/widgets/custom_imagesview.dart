import 'package:flutter/material.dart';

class CustomImagesview extends StatelessWidget {
  const CustomImagesview({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
      // child: Column(
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 50,
      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      //       child: Column(
      //         children: [
      //           Text("set wallpaper"),
      //           Text("image will be saved in galler"),
      //         ],
      //       ),
      //     ),
      //     TextButton(onPressed: () {}, child: Text('Cancel'))
      //   ],
      // ),
    );
  }
}
