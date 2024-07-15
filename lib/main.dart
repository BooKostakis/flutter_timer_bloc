import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SteamTrainer(),
    );
  }
}

class SteamTrainer extends StatelessWidget {
  const SteamTrainer({super.key});

  Stream<int> countSteam(int max) async* {
    for (int i = 0; i < max; i++) {
      yield i;
    }
  }

  Future<int> sumStream(Stream<int> stream) async {
    int sum = 0;
    await for (int value in stream) {
      sum = sum + value;
    }
    return sum;
  }

  Future<int> getStreamSumm(int max) async {
    Stream<int> stream = countSteam(max);
    final int streamSumm = await sumStream(stream);
    return streamSumm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder<int>(
              future: getStreamSumm(50),
              builder: (context, snapshot) => Text(
                    'Сумма: ${snapshot.data}',
                    style: const TextStyle(fontSize: 32),
                  ))),
    );
  }
}
