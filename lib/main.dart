import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/main_screen.dart';
import 'screens/detail_screen.dart';
import 'providers/TravelSpots.dart';
import 'providers/topics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: TravelSpots(),
        ),
        ChangeNotifierProvider.value(
          value: Topics(),
        ),
      ],
      child: MaterialApp(
        title: 'trip app',
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Color(0xFF374560),
        ),
        home: MainScreen(),
        routes: {
          DetailScreen.route_name: (context) => DetailScreen(),
        },
      ),
    );
  }
}
