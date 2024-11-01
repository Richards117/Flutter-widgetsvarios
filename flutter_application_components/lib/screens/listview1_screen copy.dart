import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const ['Gta', 'Pokemon', 'Halo', 'Fifa', 'Destiny'];
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text('View1')),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ...options
                  .map((game) => ListTile(
                        title: Text(game),
                        trailing: const Icon(Icons.arrow_forward_outlined),
                      ))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
