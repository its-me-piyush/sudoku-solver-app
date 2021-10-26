import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/sudokuMarkerProvider.dart';

import './screens/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SudokuMarkerProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: MaterialColor(Color(0xff800CF4).value, {
            50: Color(0xfff2e7fe),
            100: Color(0xffd9b6fc),
            200: Color(0xffbf85f9),
            300: Color(0xffa654f7),
            400: Color(0xff8c23f5),
            500: Color(0xff730adc),
            600: Color(0xff5908ab),
            700: Color(0xff40067a),
            800: Color(0xff260349),
            900: Color(0xff260349),
          }),
          fontFamily: 'Comic',
        ),
        home: HomePage(),
      ),
    );
  }
}
