import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderCategory extends StatelessWidget {
  const HeaderCategory({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: paddingMain, vertical: paddingMain),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TitleWithUnderline(
            text: title,
          ),
          SizedBox(
            height: 35,
            child: FloatingActionButton.extended(
              onPressed: onPress,
              extendedPadding: const EdgeInsetsDirectional.all(12),
              backgroundColor: colorPrimary,
              label: const Text(
                'Ver mais',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  final String text;

  const TitleWithUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: paddingMain / 4),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              margin: const EdgeInsets.only(right: paddingMain / 4),
              color: colorPrimary.withOpacity(0.2),
            ))
      ]),
    );
  }
}
