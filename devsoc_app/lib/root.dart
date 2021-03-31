import 'package:devsoc_app/screens/landingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => LandingScreen()),
      ],
    );
  }
}
