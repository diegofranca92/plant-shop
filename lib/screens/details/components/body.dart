import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_shop/constants.dart';

import 'icon_btn.dart';

class BodyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Imagens e IconesBtn
          SizedBox(
              height: screenSize.height * 0.8,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: paddingMain * 3),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: SvgPicture.asset(
                                  "assets/icons/back_arrow.svg")),
                        ),
                        Spacer(),
                        IconBtn(icon: "assets/icons/sun.svg"),
                        IconBtn(icon: "assets/icons/icon_2.svg"),
                        IconBtn(icon: "assets/icons/icon_3.svg"),
                        IconBtn(icon: "assets/icons/icon_4.svg"),
                      ],
                    ),
                  )),
                  Container(
                    height: screenSize.height * 0.8,
                    width: screenSize.width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(63),
                          bottomLeft: Radius.circular(63),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 60,
                              color: colorPrimary.withOpacity(0.29))
                        ],
                        image: const DecorationImage(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img.png"))),
                  )
                ],
              )),
          // Texto debaixo da foto
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: paddingMain, vertical: paddingMain),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Serviço 1\n',
                      style: Theme.of(context).textTheme.headline4),
                  const TextSpan(
                      text: 'Profissional',
                      style: TextStyle(
                          fontSize: 20,
                          color: colorPrimary,
                          fontWeight: FontWeight.w300))
                ])),
                const Text('R\$ 45',
                    style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 24))
              ],
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                  width: screenSize.width / 2,
                  height: 84,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Agendar',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorPrimary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20)))),
                  )),
              SizedBox(
                  width: screenSize.width / 2,
                  height: 84,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Descrição',
                      style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: bgColor,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
