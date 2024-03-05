import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';

sealed class Result<S, E extends FailureEntity> {
  const Result();
}

class Success<S, E extends FailureEntity> extends Result<S, E> {
  const Success(this.value);
  final S value;
}

class Failure<S, E extends FailureEntity> extends Result<S, E> {
  const Failure(this.exception);
  final E exception;
}
