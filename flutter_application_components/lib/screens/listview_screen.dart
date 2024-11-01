import 'package:flutter/material.dart';

class ListView3Screen extends StatefulWidget {
  const ListView3Screen({Key? key}) : super(key: key);

  @override
  State<ListView3Screen> createState() => _ListView3ScreenState();
}

class _ListView3ScreenState extends State<ListView3Screen> {
  final List<int> ImagesID = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastID = ImagesID.last;
    ImagesID.addAll([1, 2, 3, 4, 5].map((e) => lastID + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: ImagesID.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/id/237/500/300?image=${ImagesID[index]}'),
              fit: BoxFit.cover,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          child: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
