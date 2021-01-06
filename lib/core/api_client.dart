import 'dart:convert';
import 'package:airlines/data/model/airline_result_model.dart';
import 'package:airlines/domain/entity/app_error.dart';
import 'package:http/http.dart';
import 'api_constant.dart';

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  dynamic get() async {
    final response = await _client.get(
      ApiConstants.BASE_URL,
      headers: {
        'Content-Type': 'airlines/json',
      },
    );
    if (response.statusCode == 200) {
      //return AirlineResultModel.fromJson(jsonDecode(response.body));
      return json.decode(response.body);
      //final response = await http.get(url);



    } else {
      return AppError('Something went wrong');
    }
  }
}
