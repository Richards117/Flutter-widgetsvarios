import 'package:flutter/material.dart';

class Customcardtype extends StatelessWidget {
  const Customcardtype({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('credito'),
            subtitle: Text('BBA'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Boton Ok (Aceeptar)
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent),
                  ),
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                //Boton Cancelar
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
