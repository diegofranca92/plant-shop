import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardVertical extends StatelessWidget {
  final String image, title, description;
  final double value;
  final VoidCallback onPress;

  const CardVertical({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.value,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * .4,
      margin: const EdgeInsets.only(
          left: paddingMain, top: paddingMain / 2, bottom: paddingMain * 2.5),
      child: Column(children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: onPress,
          child: Container(
            padding: const EdgeInsets.all(paddingMain / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: colorPrimary.withOpacity(0.23))
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: description,
                        style: TextStyle(color: colorPrimary.withOpacity(0.5)))
                  ])),
                  Text('R\$ $value',
                      style: const TextStyle(
                          color: colorPrimary, fontWeight: FontWeight.w500))
                ]),
          ),
        )
      ]),
    );
  }
}
