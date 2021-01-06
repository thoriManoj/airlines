
import 'package:airlines/data/model/airline_result_model.dart';

class AirlinesList {
  final List<AirlineResultModel> airlines;

  AirlinesList({this.airlines});

  factory AirlinesList.fromJson(List<dynamic> parsedJson) {

    // ignore: deprecated_member_use
    List<AirlineResultModel> airlineList = List<AirlineResultModel>();
    airlineList = parsedJson.map((i)=>AirlineResultModel.fromJson(i)).toList();

    return AirlinesList(
      airlines: airlineList,
    );
  }
}