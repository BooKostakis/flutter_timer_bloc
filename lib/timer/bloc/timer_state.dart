part of 'timer_bloc.dart';

enum TimerStateStatus {
  initial,
  runPause,
  runInProgress,
  runComplete,
}

@freezed
class TimerState with _$TimerState {
  const factory TimerState.general({
    TimerStateStatus? status,
    int? duration,
    bool? directionForward,
  }) = _TimerStateGeneral;
}




  // final class TimerInitial extends TimerState {
  //   const TimerInitial(super.duration, directionForward);

  //   @override
  //   String toString() => 'TimerInitial { duration: $duration }';
  // }

  // final class TimerRunPause extends TimerState {
  //   const TimerRunPause(super.duration, directionForward);

  //   @override
  //   String toString() => 'TimerRunPause { duration: $duration }';
  // }

  // final class TimerRunInProgress extends TimerState {
  //   const TimerRunInProgress(super.durationm, directionForward);

  //   @override
  //   String toString() => 'TimerRunInProgress { duration: $duration }';
  // }

  // final class TimerRunComplete extends TimerState {
  //   const TimerRunComplete() : super(0);

  // }

