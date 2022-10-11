import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/blocs/test/test_events.dart';
import 'package:mobile_app/blocs/test/test_states.dart';
import 'package:mobile_app/repositories/test/test.dart';
import 'package:mobile_app/services/logger.dart';
import 'package:mobile_app/utils/constants.dart';

export 'test_states.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final Logger _logger;
  final TestRepository _testRepository;

  /// We can pass an initial state to allow use to manually fetching setting during launch
  TestBloc(
    this._testRepository,
    this._logger, {
    TestState? initialState,
  }) : super(initialState ?? TestInitialState()) {
    on<TestFetchEvent>(fetchTest);
  }

  Future<void> fetchTest(
    TestFetchEvent event,
    Emitter<TestState> emit,
  ) async {
    try {
      emit(TestFetchingState());

      await _testRepository.fetchTest();

      emit(TestUpdatedState());
    } catch (err, stack) {
      _logger.record(error: err, stack: stack);

      emit(
        TestFetchFailedState(ErrorMessage.serverError),
      );
    }
  }
}
