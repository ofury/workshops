//Repository, from which the UseCase gets its data, belongs both to the domain and data layer.
//its definition (a.k.a. contract; abstract class in Dart) is in domain, while the implementation is in data.
//allows for a total independence of the domain layer

import 'package:arch/core/error/failure.dart';
import 'package:arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}