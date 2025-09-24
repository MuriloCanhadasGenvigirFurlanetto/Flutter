import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapaWidget extends StatelessWidget {
  const MapaWidget({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // left & right margin
      child: SizedBox(
        height: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // rounded corners
          child: FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(-23.3045, -51.1696), // Londrina
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}