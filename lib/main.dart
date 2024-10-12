import 'package:flutter/material.dart';

import 'ui/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      hintColor: Colors.black,
    ),
  ));
}
