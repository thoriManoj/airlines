import 'package:airlines/domain/entity/airline_entity.dart';

class AirlineResultModel extends AirlineEntity {
  final int id;
  final String name;
  final String country;
  final String logo;
  final String slogan;
  final String headQuaters;
  final String website;
  final String established;

  AirlineResultModel(
      {this.id,
      this.name,
      this.country,
      this.logo,
      this.slogan,
      this.headQuaters,
      this.website,
      this.established})
      : super(
          id: id,
          name: name,
          slogan: slogan,
          country: country,
          established: established,
          logo: logo,
        );

  factory AirlineResultModel.fromJson(Map<String, dynamic> json) {
    return AirlineResultModel(
      id: json['id'],
      name: json['name'],
      country: json['country'],
      logo: json['logo'],
      slogan: json['slogan'],
      headQuaters: json['head_quaters'],
      website: json['website'],
      established: json['established'],
    );
  }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['country'] = this.country;
    data['logo'] = this.logo;
    data['slogan'] = this.slogan;
    data['head_quaters'] = this.headQuaters;
    data['website'] = this.website;
    data['established'] = this.established;
    return data;
  }
}
