
import 'package:airlines/domain/entity/airline_entity.dart';
import 'package:airlines/domain/entity/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class AirlineRepository {
  Future<Either<AppError, List<AirlineEntity>>> getAirlines();
}