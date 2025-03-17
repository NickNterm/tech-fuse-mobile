import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/domain/entities/general_sensor.dart';
import 'package:app/features/home/presentation/bloc/sensor/sensor_bloc.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:latlong2/latlong.dart';

import '../../../../utils/graph_helper.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  late AnimatedMapController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimatedMapController(
      vsync: this,
    );
  }

  GeneralSensor? generalSensor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SensorBloc, SensorState>(
      bloc: sl<SensorBloc>(),
      builder: (context, state) {
        return Stack(
          children: [
            FlutterMap(
              mapController: controller.mapController,
              options: MapOptions(
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.drag |
                      InteractiveFlag.flingAnimation |
                      InteractiveFlag.pinchMove |
                      InteractiveFlag.pinchZoom |
                      InteractiveFlag.doubleTapZoom |
                      InteractiveFlag.doubleTapDragZoom |
                      InteractiveFlag.scrollWheelZoom,
                ),
                initialCenter: LatLng(39.6586678, 20.8456178),
                initialZoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(
                  markers: state.sensors
                      .map(
                        (e) => Marker(
                          point: e.location,
                          height: 40,
                          width: 40,
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                generalSensor = e;
                              });
                            },
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                height: 100,
                                width: 100,
                                fit: BoxFit.contain,
                                "assets/${e.type}.png",
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            if (generalSensor != null)
              Positioned(
                bottom: 30,
                left: 16,
                right: 16,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  insetPadding: EdgeInsets.all(16),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          generalSensor!.sensorName,
                                          style: context.textStyles.header2,
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: LineChart(
                                            mainData(
                                              context,
                                              generalSensor!,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            "Open Chart",
                            style: context.textStyles.body1b.copyWith(
                              color: context.palette.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Name: ${generalSensor!.sensorName}",
                          ),
                          Text(
                            "location: ${generalSensor!.location.latitude}, ${generalSensor!.location.longitude} ",
                          ),
                          Text(
                            "notes: ${generalSensor!.notes}",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Icon(Icons.menu),
              ),
            )
          ],
        );
      },
    );
  }
}
