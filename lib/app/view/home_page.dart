import 'package:flutter/material.dart';
import 'package:flutter_flavors_by_dart_define/app/config/config.dart';
import 'package:package_info/package_info.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'You defined ENV variables like',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'APP_NAME: ${FlavorConfig.APP_NAME}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'APP_SUFFIX: ${FlavorConfig.APP_SUFFIX}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Package Name',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  FutureBuilder<PackageInfo>(
                      future: PackageInfo.fromPlatform(),
                      builder: (context, value) {
                        if (!value.hasData) {
                          return Container();
                        }
                        return Text(
                          value.data.packageName,
                          style: Theme.of(context).textTheme.headline6,
                        );
                      }),
                  Center(
                    child: RaisedButton(
                      child: Text('Kappa'),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute<DetailScreen>(
                          builder: (context) => DetailScreen(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
