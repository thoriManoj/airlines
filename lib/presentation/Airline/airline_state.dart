part of 'airline_bloc.dart';

abstract class AirlineState extends Equatable {
  const AirlineState();

  @override
  List<Object> get props => [];
}

class AirlineInitial extends AirlineState {}

class AirlineError extends AirlineState {

}

class AirlineLoaded extends AirlineState {
  final List<AirlineEntity> airlines;
  AirlineLoaded({
    this.airlines,
  });

  @override
  List<Object> get props => [airlines];
}
