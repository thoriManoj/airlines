import 'package:equatable/equatable.dart';

class AirlineEntity extends Equatable {
  final int id;
  final String name;
  final String slogan;
  final String country;
  final String established;
  final String logo;

  AirlineEntity({
    this.id,
    this.name,
    this.slogan,
    this.country,
    this.established,
    this.logo,
  }
  );

  @override
  List<Object> get props => [id, name];

  @override
  bool get stringify => true;
}
