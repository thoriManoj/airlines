import 'package:airlines/presentation/Airline/airline_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'airline_tile.dart';

class AirlineListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AirlineBloc, AirlineState>(
      builder: (context, state) {
        if (state is AirlineLoaded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final airline = state.airlines[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 3,
                  child: AirlineTile(airline: airline),
                ),
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
