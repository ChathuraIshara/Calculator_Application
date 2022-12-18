import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';

import 'screens/homepage.dart';

/*void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);*/

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Calculator",
     debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
     // locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      home:HomePage(),
    );
  }
}