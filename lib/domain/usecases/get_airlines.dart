
import 'package:airlines/domain/entity/airline_entity.dart';
import 'package:airlines/domain/entity/app_error.dart';
import 'package:airlines/domain/repositories/airline_repository.dart';
import 'package:dartz/dartz.dart';

class GetAirlines {
  AirlineRepository airlineRepository;

  GetAirlines(this.airlineRepository);

  Future<Either<AppError, List<AirlineEntity>>> call() async {
    return airlineRepository.getAirlines();
  }
}