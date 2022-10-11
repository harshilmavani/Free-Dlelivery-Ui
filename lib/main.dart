import 'package:flutter/material.dart';
import 'package:freedlelivery/page2.dart';
import 'package:freedlelivery/search_sceen2.dart';
import 'package:freedlelivery/search_screen.dart';

import 'bottam_screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page2(),
    );
  }
}
