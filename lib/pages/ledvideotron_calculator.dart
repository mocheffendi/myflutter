import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_route_name/component/drawer.dart';

class LedVideotronCalculator extends StatefulWidget {
  const LedVideotronCalculator({super.key, required this.title});

  final String title;
  @override
  State<LedVideotronCalculator> createState() => _LedVideotronCalculatorState();
}

class _LedVideotronCalculatorState extends State<LedVideotronCalculator> {
  TextEditingController controllerpixels = TextEditingController();
  TextEditingController controllerheightcab = TextEditingController();
  TextEditingController controllerwidthcab = TextEditingController();
  TextEditingController controllerheightcabcount = TextEditingController();
  TextEditingController controllerwidthcabcount = TextEditingController();

  int heightcab = 0;
  int widthcab = 0;
  int heightmodul = 0;
  int widthmodul = 0;
  int heightpixels = 0;
  int widthpixels = 0;
  int heightcabcount = 0;
  int widthcabcount = 0;
  int totalheightpixels = 0;
  int totalwidthpixels = 0;

  @override
  void dispose() {
    controllerpixels.dispose();
    controllerheightcab.dispose();
    controllerwidthcab.dispose();
    controllerheightcabcount.dispose();
    controllerwidthcabcount.dispose();
    super.dispose();
  }

  cabinetcalculator(double pitch) {
    heightpixels = (heightcab / pitch).round();
    widthpixels = (widthcab / pitch).round();
    totalheightpixels = heightpixels * heightcabcount;
    totalwidthpixels = widthpixels * widthcabcount;

    log('Height 1 Cab : $heightcab');
    log('Width 1 cab : $widthcab');
    log('Pitch : $pitch');

    return setState(() {
      [heightpixels, widthpixels];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 500,
          child: Column(
            children: [
              Text('Width 1 Cabinet : $widthpixels'),
              Text('Height 1 Cabinet : $heightpixels'),
              Text('Total Pixel Width  : $totalwidthpixels'),
              Text('Total Pixel Height : $totalheightpixels'),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Width',
                  hintText: 'Width',
                ),
                controller: controllerwidthcab,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Height',
                  hintText: 'Height',
                ),
                controller: controllerheightcab,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Pixels',
                  hintText: 'Pixles',
                ),
                controller: controllerpixels,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Cabinet Width Count',
                  hintText: 'Cabinet Width Count',
                ),
                controller: controllerwidthcabcount,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Cabinet Height Count',
                  hintText: 'Cabinet Height Count',
                ),
                controller: controllerheightcabcount,
              ),
              ElevatedButton(
                  onPressed: () {
                    heightcab = int.tryParse(controllerheightcab.text) ?? 0;
                    widthcab = int.tryParse(controllerwidthcab.text) ?? 0;
                    double n = double.tryParse(controllerpixels.text) ?? 0;
                    heightcabcount =
                        int.tryParse(controllerheightcabcount.text) ?? 0;
                    widthcabcount =
                        int.tryParse(controllerwidthcabcount.text) ?? 0;

                    log(heightcab.toString());
                    log(widthcab.toString());

                    cabinetcalculator(n);
                  },
                  child: const Text('Calculate'))
            ],
          ),
        ),
      ),
    );
  }
}
