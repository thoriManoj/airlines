part of 'airline_bloc.dart';

abstract class AirlineEvent extends Equatable {
  const AirlineEvent();

  @override
  List<Object> get props => [];
}

class AirlineLoadEvent extends AirlineEvent {}
