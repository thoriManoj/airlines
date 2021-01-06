import 'package:airlines/core/api_client.dart';
import 'package:airlines/data/datasource/airline_remote_datasource.dart';
import 'package:airlines/data/repository/airline_repository_impl.dart';
import 'package:airlines/domain/repositories/airline_repository.dart';
import 'package:airlines/domain/usecases/get_airlines.dart';
import 'package:airlines/presentation/Airline/airline_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());

  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));

  getItInstance.registerLazySingleton<AirlineRemoteDataSource>(
      () => AirlineRemoteDataSourceImpl(getItInstance()));

  getItInstance
      .registerLazySingleton<GetAirlines>(() => GetAirlines(getItInstance()));

  getItInstance.registerLazySingleton<AirlineRepository>(
      () => AirlineRepositoryImpl(getItInstance()));

  getItInstance
      .registerFactory(() => AirlineBloc(getAirlines: getItInstance()));
}
