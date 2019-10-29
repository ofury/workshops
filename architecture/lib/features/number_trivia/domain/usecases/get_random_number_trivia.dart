import 'package:arch/core/error/failure.dart';
import 'package:arch/core/usecases/usecase.dart';
import 'package:arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams>{
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
      return await repository.getRandomNumberTrivia();
    }

  }

