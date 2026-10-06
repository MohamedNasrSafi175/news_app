import 'package:flutter/material.dart';

import '../screen/HomeScreen/home_screen.dart';

abstract class AppRoutes {
  static final MaterialPageRoute homeScreen = MaterialPageRoute(
    builder: (context) => HomeScreen(),
  );
}
