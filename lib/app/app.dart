import 'package:flutter/material.dart';
import 'package:flutter_flavors_by_dart_define/app/view/home_page.dart';
import 'config/widgets/flavor_banner.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomePage(title: 'Flutter Flavors by Dart Define'),
      debugShowCheckedModeBanner: false,
      builder: (BuildContext context, Widget child) {
        return FlavorBanner(child: child);
      },
    );
  }
}
