import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_project/provider/search_provider.dart';
import 'package:wallpaper_project/widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key, required this.searchquery});
  final String searchquery;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController searchcontroller;
  @override
  void initState() {
    searchcontroller = TextEditingController();
    searchcontroller.text = widget.searchquery;
    log(widget.searchquery);
    Provider.of<SearchProvider>(context, listen: false)
        .searchWallpaper(widget.searchquery);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Center(child: CustomAppbar()),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 48),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: searchcontroller,
              style: TextStyle(color: Color(0xfff5f8fd)),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "search",
                  suffixIcon: Icon(Icons.search)),
              onTap: () {
                //  searchcontroller = TextEditingController();
                //  searchcontroller.text = widget.searchquery;
                log(widget.searchquery);
                Provider.of<SearchProvider>(context, listen: false)
                    .searchWallpaper(searchcontroller.text);
              },
            ),
          ),
        ),
      ),
      body:
          Consumer<SearchProvider>(builder: (BuildContext ctx, value, Widget_) {
        return GridView.count(
            padding: EdgeInsets.all(8),
            shrinkWrap: true,
            childAspectRatio: 0.6,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(value.list.length, (index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  value.list[index].src.portrait,
                  fit: BoxFit.fill,
                ),
              );
            }));
      }),
    );
  }
}
