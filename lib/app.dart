import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_bloc/theme.dart';
import 'package:flutter_timer_bloc/ticker.dart';
import 'package:flutter_timer_bloc/timer/bloc/timer_bloc.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocProvider(
                create: (_) => TimerBloc(ticker: const Ticker()),
                child: const ButtonRow(),
              ),
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
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...switch (state) {
              TimerInitial() => [
                  Column(
                    children: [
                      const TimerText(),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: textButtonDark,
                        child: const Text('Start'),
                        onPressed: () => context
                            .read<TimerBloc>()
                            .add(TimerStarted(duration: state.duration)),
                      ),
                    ],
                  ),
                ],
              TimerRunInProgress() => [
                  Column(
                    children: [
                      const TimerText(),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: textButtonDark,
                        onPressed: () =>
                            context.read<TimerBloc>().add(const TimerPaused()),
                        child: const Text('Stop'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: textButtonDark,
                        onPressed: () =>
                            context.read<TimerBloc>().add(const TimerReset()),
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              TimerRunPause() => [
                  Column(
                    children: [
                      const TimerText(),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: textButtonDark,
                        onPressed: () =>
                            context.read<TimerBloc>().add(const TimerResumed()),
                        child: const Text('Go On'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: textButtonDark,
                        onPressed: () =>
                            context.read<TimerBloc>().add(const TimerReset()),
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              TimerRunComplete() => [
                  ElevatedButton(
                    style: textButtonDark,
                    onPressed: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                    child: const Icon(Icons.replay),
                  ),
                ],
            }
          ],
        );
      },
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({super.key});
  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: timerTextStyle,
    );
  }
}
