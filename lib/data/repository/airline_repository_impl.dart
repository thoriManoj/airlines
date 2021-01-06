
import 'package:airlines/data/datasource/airline_remote_datasource.dart';
import 'package:airlines/domain/entity/airline_entity.dart';
import 'package:airlines/domain/entity/app_error.dart';
import 'package:airlines/domain/repositories/airline_repository.dart';
import 'package:dartz/dartz.dart';

class AirlineRepositoryImpl extends AirlineRepository {

  final AirlineRemoteDataSource airlineRemoteDataSource;


  AirlineRepositoryImpl(this.airlineRemoteDataSource);

  @override
  Future<Either<AppError, List<AirlineEntity>>> getAirlines() async {
    try {
      final airlines = await airlineRemoteDataSource.getAirlines();
      return Right(airlines);
    } on Exception {
      return Left(
        AppError('Something went wrong!'),
      );
    }
  }
}