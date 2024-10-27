//import 'package:wallpaper_app/model/category_model.dart';
import 'package:wallpaper_project/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categorieslist = [];

  categorieslist.add(CategoryModel(
      title: "Animal",
      img:
          "https://media.istockphoto.com/id/1081257970/photo/wildlife-animal-squirrel.webp?a=1&b=1&s=612x612&w=0&k=20&c=N4XFkQdmrPq8JVNifBP56yyTnBwWo7bCWijWuP9G1Q8="));
  categorieslist.add(CategoryModel(
      title: "Art",
      img:
          "https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?q=80&w=1945&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"));
  categorieslist.add(CategoryModel(
      title: "Car",
      img:
          "https://images.unsplash.com/photo-1515569067071-ec3b51335dd0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"));
  categorieslist.add(CategoryModel(
      title: "Color",
      img:
          "https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"));
  categorieslist.add(CategoryModel(
      title: "Design",
      img:
          "https://images.unsplash.com/photo-1527049979667-990f1d0d8e7f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D"));
  return categorieslist;
}
