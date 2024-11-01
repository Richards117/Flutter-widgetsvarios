import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: Colors.blue,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),

            // Checkbox(
            //   value: _sliderEnabled,
            //   onChanged: ( value ) {
            //     _sliderEnabled = value ?? true;
            //     setState(() {});
            //   }
            // ),
            // Switch(
            //   value: _sliderEnabled,
            //   onChanged: ( value ) => setState(() { _sliderEnabled = value; })
            // ),
            CheckboxListTile(
                activeColor: Colors.purple,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),

            SwitchListTile.adaptive(
                activeColor: Colors.red,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),

            const AboutListTile(),

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2023/08/20/16925227896569.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
