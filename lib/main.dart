import 'package:flutter/material.dart';
import 'package:gridview_darsi/gridview_builder.dart';
import 'package:gridview_darsi/gridview_count.dart';
import 'package:gridview_darsi/gridview_custom.dart';
import 'package:gridview_darsi/gridview_extent.dart';
import 'package:gridview_darsi/gridview_ozi.dart';

void main() {
  runApp(const GridViewDarsi());
}

class GridViewDarsi extends StatelessWidget {
  const GridViewDarsi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gridview darsi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GridviewExtent(),
    );
  }
}
