import 'package:app/app.dart';
import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/presentation/bloc/sensor/sensor_bloc.dart';
import 'package:app/features/home/presentation/pages/graph_screen.dart';
import 'package:app/features/home/presentation/pages/map_screen.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget page = MapScreen();

  @override
  void initState() {
    super.initState();
    sl<SensorBloc>().add(GetSensor());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: context.palette.primaryColor,
              ),
            ),
            ListTile(
              title: Text("Map Data"),
              onTap: () {
                setState(() {
                  page = MapScreen();
                });
              },
            ),
            ListTile(
              title: Text("Graph Data"),
              onTap: () {
                setState(() {
                  page = GraphScreen();
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "TerraLake",
          style: context.textStyles.header2.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: page,
    );
  }
}
