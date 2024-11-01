import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['ford', 'chevrolet', 'audi', 'bmw', 'renault'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text('View2')),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_outlined),
                onTap: () {},
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
