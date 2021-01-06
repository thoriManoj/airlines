import 'dart:async';
import 'package:airlines/domain/entity/airline_entity.dart';
import 'package:airlines/domain/usecases/get_airlines.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'airline_event.dart';
part 'airline_state.dart';

class AirlineBloc extends Bloc<AirlineEvent, AirlineState> {
  final GetAirlines getAirlines;

  AirlineBloc({@required this.getAirlines}) : super(AirlineInitial());

  @override
  Stream<AirlineState> mapEventToState(
    AirlineEvent event,
  ) async* {
    if (event is AirlineLoadEvent) {
      final airlineEither = await getAirlines();

      yield airlineEither.fold((l) => AirlineError(), (airlines) {
        return AirlineLoaded(
          airlines: airlines,
        );
      });
    }
  }
}
