import 'package:flutter/material.dart';

class GridviewCount extends StatelessWidget {
  const GridviewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(
          10,
          (index) => Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: [
                Text("${index + 1}-element"),
                Image.network(
                    "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
