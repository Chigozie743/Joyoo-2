import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joyoo/constants/color_constants.dart';
import 'package:joyoo/constants/navigator.dart';
import 'package:joyoo/screens/main_page/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
      
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Joyoo',
            theme: ThemeData(
              //canvasColor: Colors.transparent,
              datePickerTheme: const DatePickerThemeData(
                headerBackgroundColor: Colors.green,
              ),
              scaffoldBackgroundColor: blackBackground,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: lightIconsColor,
                ),
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: blackText,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 0.0,
              ),
              iconTheme: IconThemeData(
                color: lightIconsColor,
              ),
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: Colors.black,
                selectionColor: greenBackground,
                selectionHandleColor: greenBackground,
              ),
              cardColor: whiteBackground,
              brightness: Brightness.light,
              colorScheme: ThemeData().colorScheme.copyWith(
                    secondary: lightIconsColor,
                    brightness: Brightness.light,
                  ),
            ),
            home: const MainPage(),
          );
        });
  }
}

