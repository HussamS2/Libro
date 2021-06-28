import 'package:Library_App/Screens/categoriesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: true);
  FlutterDownloader.registerCallback(TestClass.callback);

  runApp(MyAppLibro());
}

class TestClass {
  static void callback(String id, DownloadTaskStatus status, int progress) {}
}

class MyAppLibro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesScreen(),
    );
  }
}
