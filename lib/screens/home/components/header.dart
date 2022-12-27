import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

SizedBox HeaderWithSearch(Size screenSize, BuildContext context) {
  return SizedBox(
    // Ocupa 20% da tela
    height: screenSize.height * 0.2,
    child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: paddingMain, right: paddingMain, bottom: 36 + paddingMain),
          height: screenSize.height * 0.2 - 27,
          margin: const EdgeInsets.only(bottom: paddingMain * 1.5),
          decoration: const BoxDecoration(
            color: colorPrimary,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Olá Pessoa',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/images/logo.png")
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: paddingMain),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: colorPrimary.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: ((value) {}),
                      decoration: InputDecoration(
                        hintText: 'Busque uma planta',
                        hintStyle:
                            TextStyle(color: colorPrimary.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset("assets/icons/search.svg"))
                ],
              ),
            ))
      ],
    ),
  );
}
