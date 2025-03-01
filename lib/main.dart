import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_weather_example_flutter/src/features/weather_page/weather_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleWithShadow = TextStyle(color: Colors.white, shadows: [
      BoxShadow(
        color: Colors.black12.withOpacity(0.25),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 0.5),
      )
    ]);

    //
    final text_temp = TextStyle(color: Colors.white, fontSize: 18); //온도 textstyle

    return MaterialApp(
      title: '날씨검색_코디_추천', //앱이름
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, //기본 색상 변경
        textTheme: TextTheme(
          headline1: textStyleWithShadow,
          headline2: textStyleWithShadow,
          headline3: textStyleWithShadow,
          headline4: textStyleWithShadow,
          headline5: textStyleWithShadow,

          headline6: text_temp, //온도 설정폰트

          subtitle1: const TextStyle(color: Colors.white),
          bodyText2: const TextStyle(color: Colors.white), //최고,최저
          bodyText1: const TextStyle(color: Colors.black), //검색
          caption: const TextStyle(color: Colors.white70, fontSize: 13), //요일
        ),
      ),
      home: const WeatherPage(city: 'Seoul'),
    );
  }
}