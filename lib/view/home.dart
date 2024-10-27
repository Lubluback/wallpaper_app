import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:wallpaper_app/api_servises/api_services.dart';
//import 'package:wallpaper_app/data/category_data.dart';
//import 'package:wallpaper_app/model/category_model.dart';

//import 'package:wallpaper_app/widget/custom_container.dart';
import 'package:wallpaper_project/api_services/api_services.dart';
import 'package:wallpaper_project/data/category_data.dart';
import 'package:wallpaper_project/model/category_model.dart';
import 'package:wallpaper_project/provider/home_provider.dart';
import 'package:wallpaper_project/view/search.dart';
import 'package:wallpaper_project/widgets/custom_container.dart';
import 'package:wallpaper_project/widgets/custom_gridview.dart';

import '../widgets/custom_appbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<CategoryModel> categories = getCategories();
  TextEditingController searchcontroller = TextEditingController();

  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getWallpaper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(child: CustomAppbar())),
      body: Consumer<HomeProvider>(
          builder: (BuildContext context, value, child_) {
        print(" vaaaluuuuu:${value.wallpaper}");
        return Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextFormField(
                  // textAlign: TextAlign.start,
                  controller: searchcontroller,
                  style: TextStyle(color: Color(0xfff5f8fd)),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "search",
                      suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchPage(
                                    searchquery: searchcontroller.text,
                                  )));
                        },
                        icon: Icon(Icons.search),
                      )),
                
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return CustomContainer(
                      img: categories[index].img,
                      text: categories[index].title,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: CustomGridview(
                  wallpaper: value.wallpaper,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
