import 'package:flutter/material.dart';
import 'package:flutter_application_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            Customcardtype(),
            SizedBox(height: 10),
            CardType2(
              name: 'Paisaje Hermoso de Prueba genial',
              imageUrl:
                  'https://www.ifam.es/uk/wp-content/uploads/sites/15/2015/08/imagenes-de-paisajes-hermosos-4.jpg',
            ),
            SizedBox(height: 10),
            CardType2(
              imageUrl:
                  'https://st2.depositphotos.com/1852625/5395/i/450/depositphotos_53954927-stock-photo-beautiful-landscape-of-scottish-nature.jpg',
            )
          ],
        ));
  }
}
