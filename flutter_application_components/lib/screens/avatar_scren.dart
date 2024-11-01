import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Perfil Usario',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 28),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('C'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //contenedor de imagen avatar
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 3, 99, 244),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ]),
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: const CircleAvatar(
                maxRadius: 150,
                backgroundImage: NetworkImage(
                    'https://www.nacion.com/resizer/YemGgVU-i1hwVgzRzd2ZdBu18Ws=/arc-anglerfish-arc2-prod-gruponacion/public/CGVIR4N5MRFDJKYVCDXFHDW2SU.jpeg'),
              ),
            ),
            const SizedBox(height: 10),
            //contenedor del nombre
            Container(
              child: const Text(
                'Juan Pablo Rizo ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            const SizedBox(height: 20),
            //parte inferior despues del avatar
            Stack(
              children: [
                //contenedor debajo del avatar
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.black, width: 3),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(59, 170, 186, 1),
                          Color.fromRGBO(58, 153, 177, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.25, 0.90],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 40,
                          offset: Offset(0, 0),
                        )
                      ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    //contenedor de Cerrar sesion
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20, vertical: 20),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(255, 178, 200, 206),
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              textStyle: const TextStyle(fontSize: 20)),
                          icon: const Icon(
                            Icons.exit_to_app,
                            color: Colors.red,
                            shadows: [
                              BoxShadow(blurRadius: 25, color: Colors.red)
                            ],
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Cerrar Sesion',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      //contenedor de Pagar colegiatura
                      Container(
                        margin: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20, vertical: 5),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color.fromARGB(255, 178, 200, 206),
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              textStyle: const TextStyle(fontSize: 20)),
                          icon: const Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.red,
                            shadows: [
                              BoxShadow(blurRadius: 25, color: Colors.red)
                            ],
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Pagar Colegiatura',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 53, 124, 206),
        elevation: 20,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopify,
                color: Colors.white,
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_sharp,
                color: Colors.white,
              ),
              label: 'Perfil'),
        ],
      ),
    );
  }
}
