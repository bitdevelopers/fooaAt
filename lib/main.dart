import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_at/locale/locale.dart';
import 'package:food_at/view/splachScreen/splach_screen_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // change color status app
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.white,
        ),
        localizationsDelegates: const [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
        localeResolutionCallback: (currentLang, supportLang) {
          if (currentLang != null) {
            for (Locale locale in supportLang) {
              if (locale.languageCode == currentLang.languageCode) {
                // mySharedPreferences.setString("lang",currentLang.languageCode) ;
                return currentLang;
              }
            }
          }
          return supportLang.first;
        },
        home: const SplachScreen(),
      ),
    );
  }
}
