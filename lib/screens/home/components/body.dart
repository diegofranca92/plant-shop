import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';
import 'header.dart';
import 'header_category.dart';
import 'list_category.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Captura o tamanho da tela
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(screenSize, context),
          HeaderCategory(title: 'Destaques', onPress: () {}),
          const ListCategory(),
          HeaderCategory(title: 'Tranças', onPress: () {}),
          Container(
            margin: const EdgeInsets.only(
                left: paddingMain,
                top: paddingMain / 2,
                bottom: paddingMain / 2),
            width: screenSize.width * .8,
            height: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bottom_img_1.png"))),
          )
        ],
      ),
    );
  }
}
