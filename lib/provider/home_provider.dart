import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:wallpaper_project/api_services/api_services.dart';
import 'package:wallpaper_project/model/wallpaper_model.dart';

class HomeProvider with ChangeNotifier {
  List<WallpaperModel> _wallpaper = [];
  List<WallpaperModel> get wallpaper => _wallpaper;
  bool isloading = false;

  getWallpaper() async {
    final data = Apidata();

    isloading = true;
    final Response = await data.getCategoriesData();
    if (Response != null) {
      _wallpaper.addAll(Response.photos ?? []);
    }

    // _wallpaper.addAll(Response);
    print("response===${Response?.photos?[0].src.portrait}");
    print("nowwwwwwww" + _wallpaper.toString());

    isloading = false;
    notifyListeners();
  }
}
