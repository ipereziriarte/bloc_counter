import 'dart:html';

import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main(List<String> args) {
  group('CounterCubit', () {
    CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });

    test(
        'the initial state of the CounterCubit is CounterState(counterValue:0)',
        () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });
  });
}
