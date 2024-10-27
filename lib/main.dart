import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_project/provider/home_provider.dart';
import 'package:wallpaper_project/provider/search_provider.dart';
//import 'package:wallpaper_app/view/home.dart';
import 'package:wallpaper_project/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),
        ChangeNotifierProvider<SearchProvider>(
            create: (context) => SearchProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wallpaper Hub',
        theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      ),
    );
  }
}
