import 'package:airlines/di/get_it.dart';
import 'package:airlines/presentation/widgets/airline_listtile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Airline/airline_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AirlineBloc airlineBloc;

  @override
  void initState() {
    super.initState();
    airlineBloc = getItInstance<AirlineBloc>();
    airlineBloc.add(AirlineLoadEvent());
  }

  @override
  void dispose() {
    airlineBloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => airlineBloc,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Airlines'),
          ),
          body: AirlineListTile(),
      )
    );
  }
}
