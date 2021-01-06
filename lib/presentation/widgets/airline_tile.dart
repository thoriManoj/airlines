
import 'package:airlines/domain/entity/airline_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class AirlineTile extends StatelessWidget {
  const AirlineTile({
    Key key,
    @required this.airline,
  }) : super(key: key);

  final AirlineEntity airline;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      contentPadding:
      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      leading: Column(
        children: [
          Expanded(
            flex: 2,
            child:
            Container(
              width: 100,
              height: 100,
              child: CachedNetworkImage(
                imageUrl: airline.logo,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            //'https://via.placeholder.com/150',

          ),
          SizedBox(height: 8,),
          Expanded(flex: 1,child: Text(airline.country)),
        ],
      ),
      title: Text(airline.name),
      subtitle: Text(airline.slogan),
      trailing: Text(airline.established),
    );
  }
}
