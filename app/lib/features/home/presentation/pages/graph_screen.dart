import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/presentation/bloc/sensor/sensor_bloc.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:app/utils/graph_helper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<SensorBloc, SensorState>(
          bloc: sl<SensorBloc>(),
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.sensors.length,
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    state.sensors[index].sensorName,
                    style: context.textStyles.header2,
                  ),
                  SizedBox(
                    height: 300,
                    child: LineChart(
                      mainData(
                        context,
                        state.sensors[index],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
