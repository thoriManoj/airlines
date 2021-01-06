import 'package:airlines/presentation/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:airlines/di/get_it.dart' as getIt;
import 'package:pedantic/pedantic.dart';

 main(){
  // ApiClient apiClient = ApiClient(Client());
  // AirlineRemoteDataSource remoteDataSource = AirlineRemoteDataSourceImpl(apiClient);
  // AirlineRepository airlineRepository = AirlineRepositoryImpl(remoteDataSource);
  // GetAirlines getAirlines = GetAirlines(airlineRepository);
  // getAirlines();
  //remoteDataSource.getAirlines();
   WidgetsFlutterBinding.ensureInitialized();
   unawaited(
       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
   unawaited(getIt.init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airlines',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
