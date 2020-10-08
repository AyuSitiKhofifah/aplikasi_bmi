import 'package:flutter/material.dart';
import 'bmi.dart';
import 'about.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData.light(),
        home: InputBMI(),
        routes: <String, WidgetBuilder>{
          '/input': (BuildContext context) => InputBMI(),
          '/profile': (BuildContext context) => MyProfile(),
        }));
