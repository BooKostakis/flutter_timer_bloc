import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_timer_bloc/ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.general(status: TimerStateStatus.initial)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
    on<TimerDirectionChange>(_onDirectionChange);
  }

  final Ticker _ticker;
  // static const int _duration = 90;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(state.copyWith(
        status: TimerStateStatus.runInProgress, duration: event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state.status == TimerStateStatus.runInProgress) {
      _tickerSubscription?.pause();
      emit(state.copyWith(status: TimerStateStatus.runPause));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state.status == TimerStateStatus.runPause) {
      _tickerSubscription?.resume();
      emit(state.copyWith(status: TimerStateStatus.runInProgress));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(state.copyWith(status: TimerStateStatus.initial));
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emit) {
    emit(state.copyWith(
      duration: event.duration,
      status: event.duration > 0
          ? TimerStateStatus.runInProgress
          : TimerStateStatus.runComplete,
    ));
  }

  void _onDirectionChange(
      TimerDirectionChange event, Emitter<TimerState> emit) {
    emit(
        (state.copyWith(directionForward: !(state.directionForward ?? false))));
    int? currentDuration = state.duration;
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(
            ticks: currentDuration ?? 0,
            directionForward: state.directionForward)
        .listen((duration) => add(_TimerTicked(duration: duration)));
    emit(state.copyWith(status: TimerStateStatus.runInProgress));
  }
}
