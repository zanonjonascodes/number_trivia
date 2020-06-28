import 'package:dartz/dartz.dart';
import 'package:numbertrivia/core/error/failures.dart';
import 'package:numbertrivia/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);

  /// Calls the http://numbersapi.com/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
