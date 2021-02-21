import 'package:bloc_test/bloc_test.dart';
import 'package:counter_app/domain/cubits/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

    blocTest(
      'The cubit should emit a CounterState(counterValue:1, wasIncremented: true) when cubit.increment() is called',
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: [CounterState(counterValue: 1, wasIncremented: true)],
    );

    blocTest(
      'The cubit should emit a CounterState(counterValue:-1, wasIncremented: false) when cubit.decrement() is called',
      build: () => counterCubit,
      act: (cubit) => cubit.decrement(),
      expect: [CounterState(counterValue: -1, wasIncremented: false)],
    );
  });
}
