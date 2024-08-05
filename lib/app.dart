import 'package:flutter/material.dart';
import 'package:flutter_timer_bloc/theme.dart';
import 'package:flutter_timer_bloc/timer/view/timer_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: appBarTheme,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter bloc timer'),
            ),
            body: const TimerPage()));
  }
}
