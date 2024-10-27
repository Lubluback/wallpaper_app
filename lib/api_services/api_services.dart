import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_project/model/wallpaper_model.dart';

const String apikey =
    "ikCOqDLarero6TYQxVD6QtIwJQqlJTpUiwXrWefiZ9fgHdNz56GWSPID";

abstract class ApiServices {
  Future getCategoriesData() async {}
  Future searchWallpaper(String query) async {}
}

class Apidata implements ApiServices {
  @override
  Future<BaseModel?> getCategoriesData() async {
    try {
      final String url = "https://api.pexels.com/v1/curated?per_page=26&page=1";
      final uri = Uri.parse(url);
      final response = await http.get(uri, headers: {'Authorization': apikey});
      print("data:" + response.body.toString());
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return BaseModel.fromJson(data);

        //retuen wallpaperModel.fromjsom(data)
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<BaseModel?> searchWallpaper(String query) async {
    try {
      final url =
          "https://api.pexels.com/v1/search?query=$query&per_page=15&page=1";
      final uri = Uri.parse(url);
      final response = await http.get(uri, headers: {'Authorization': apikey});
      print(response.body);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        return BaseModel.fromJson(result);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
