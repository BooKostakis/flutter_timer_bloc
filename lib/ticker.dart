class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks, bool? directionForward}) {
    if (directionForward == false || directionForward == null) {
      return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
          .take(ticks);
    } else {
      return Stream.periodic(const Duration(seconds: 1), (x) => ticks + x + 1)
          .take(ticks);
    }
  }

  //   (directionForward ?? false)

  //       ? Stream.periodic(const Duration(seconds: 1), (x) => ticks + x + 1)
  //           .take(ticks)
  //       : Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
  //           .take(ticks);
  // }
}
