import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_bloc/theme.dart';
import 'package:flutter_timer_bloc/ticker.dart';
import 'package:flutter_timer_bloc/timer/bloc/timer_bloc.dart';
import 'package:flutter_timer_bloc/timer/timer.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        BlocProvider(
          create: (_) => TimerBloc(ticker: const Ticker()),
          child: const ButtonRow(),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController startDuration = TextEditingController();

    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.status != state.status,
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...switch (state.status) {
              TimerStateStatus.initial => [
                  Column(
                    children: [
                      const Text(
                        'Введи время начала \nотсчета в секундах',
                        style: regularStyle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 1, 34, 77),
                                width: 2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: TextField(
                            controller: startDuration,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: textButtonDark,
                          child: const Text('Start'),
                          onPressed: () {
                            context.read<TimerBloc>().add(TimerStarted(
                                duration:
                                    int.tryParse(startDuration.text) ?? 90));
                          }),
                    ],
                  ),
                ],
              TimerStateStatus.runInProgress => [
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
                      ElevatedButton(
                        style: textButtonDark,
                        onPressed: () => context
                            .read<TimerBloc>()
                            .add(const TimerDirectionChange()),
                        child: const Text('change direction'),
                      ),
                    ],
                  ),
                ],
              TimerStateStatus.runPause => [
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
              TimerStateStatus.runComplete => [
                  ElevatedButton(
                    style: textButtonDark,
                    onPressed: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                    child: const Icon(Icons.replay),
                  ),
                ],
              _ => [const SizedBox()],
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
    final duration =
        context.select((TimerBloc bloc) => bloc.state.duration ?? 90);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: timerTextStyle,
    );
  }
}
