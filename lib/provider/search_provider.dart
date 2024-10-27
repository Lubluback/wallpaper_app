import 'package:flutter/material.dart';
import 'package:wallpaper_project/api_services/api_services.dart';
import 'package:wallpaper_project/model/wallpaper_model.dart';

class SearchProvider with ChangeNotifier {
  final List<WallpaperModel> _searchlist = [];
  List<WallpaperModel> get list => _searchlist;
  final datas = Apidata();
  bool isloading = false;

  searchWallpaper(String query) async {
    isloading = true;
    list.clear();
    final data = await datas.searchWallpaper(query);
    if (data != null) {
      list.addAll(data.photos ?? []);
    }
    isloading = false;
    notifyListeners();
  }
}
