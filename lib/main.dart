import 'package:celeryviz_frontend_core/celeryviz_frontend_core.dart';
import 'package:celeryviz_frontend_core/services/data_source.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final DataSource dataSource = SocketIODataSource();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CeleryViz',
      home: CeleryMonitoringCore(
        dataSource: dataSource,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
