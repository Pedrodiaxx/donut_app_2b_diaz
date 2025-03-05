import 'package:donut_app_2b_diaz/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //lista de donas
  final List  donutsOnsale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Ice cream","36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors. brown, "lib/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //elementos en nuestra lista
      itemCount: donutsOnsale.length, 
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Relacion de aspecto o proporción
        childAspectRatio: 1/1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutPrice: donutsOnsale[index][1],
          donutColor: donutsOnsale[index][2],
          imageName: donutsOnsale[index][3],

        );
    });
  }
}
