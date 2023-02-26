import 'package:flutter/material.dart';
import 'package:weather_block/core/widgets/main_wrapper.dart';

import 'locator.dart';

void main() async
{

  await setup() ;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: MainWrapperer(),
    );
  }
}


