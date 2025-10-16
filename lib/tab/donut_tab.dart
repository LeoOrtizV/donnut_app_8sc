import 'package:donnut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //List of donuts
  final List donutOnSale = [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, "lib/images/chocolate_donut.png", 'Starbucks'],
    ['Strawberry', '89', Colors.red, "lib/images/strawberry_donut.png", 'Krispy Kreme'],
    ['Ice Cream', '95', Colors.blue, "lib/images/icecream_donut.png", "Donkin' Donuts"],
    ['Grape', '70', Colors.purple, "lib/images/grape_donut.png", 'Oxxo']
  ];

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      //Se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Relación de aspecto ancho/alto
        childAspectRatio: 1 /1.4,
        ),
      //Número de elementos que va a tener el grid
      itemCount: donutOnSale.length,
        //Lo que se va a contruir en el grid
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      } 
    );
  }
}