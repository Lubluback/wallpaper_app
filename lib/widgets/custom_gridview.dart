import 'package:flutter/material.dart';
import 'package:wallpaper_project/model/wallpaper_model.dart';
import 'package:wallpaper_project/widgets/custom_imagesview.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({
    super.key,
    required this.wallpaper,
  });
  final List<WallpaperModel> wallpaper;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.all(8),
        shrinkWrap: true,
        childAspectRatio: 0.6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(wallpaper.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CustomImagesview(
                        img: wallpaper[index].src.portrait,
                      )));
            },
            child: Hero(
              tag: wallpaper[index].src.portrait,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  wallpaper[index].src.portrait,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        }));
  }
}
