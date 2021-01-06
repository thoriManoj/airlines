
import 'dart:convert';

import 'package:airlines/core/api_client.dart';
import 'package:airlines/data/model/airline_result_model.dart';
import 'package:airlines/data/model/airlines_list.dart';
import 'package:equatable/equatable.dart';

abstract class AirlineRemoteDataSource {
  Future<List<AirlineResultModel>> getAirlines();
}

class AirlineRemoteDataSourceImpl extends AirlineRemoteDataSource {

  ApiClient _client;
  AirlineRemoteDataSourceImpl(this._client);


  @override
  Future<List<AirlineResultModel>> getAirlines() async {
    final response = await _client.get();

    final airlines = AirlinesList.fromJson(response).airlines;
    print(airlines);
    return airlines;
    // final List<AirlineResultModel> loadedAirline = [];
    // final extractedAirlines =
    // json.decode(response.body) as Map<String, dynamic>;
    // // if (extractedAirlines == null) {
    // //   return;
    // // }
    //
    // extractedAirlines.forEach((id, airline) {
    //   loadedAirline.add(
    //     AirlineResultModel(
    //         id: id,
    //         name: airline['name'],
    //         slogan: airline['slogan'],
    //         country: airline['country'],
    //         logo: airline['logo'],
    //         established: airline['established'],
    //         headQuaters: airline['headQuaters'],
    //         website: airline['website']),
    //   );
    // });
  }

}