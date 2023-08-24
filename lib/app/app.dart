import 'package:card_app/pages/register_page.dart';
import 'package:flutter/material.dart';

import '../pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: RegisterPage(),
    );
  }
}
