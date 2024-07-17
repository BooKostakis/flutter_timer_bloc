import 'package:flutter/material.dart';
import 'package:flutter_timer_bloc/theme.dart';

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
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Timer'),
              SizedBox(
                height: 20,
              ),
              ButtonRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: textButtonDark,
          onPressed: () {},
          child: const Text('Start'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: textButtonLight,
          onPressed: () {},
          child: const Text('Stop'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: textButtonLight,
          onPressed: () {},
          child: const Text('Go on'),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: textButtonDark,
          onPressed: () {},
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
