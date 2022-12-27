import 'package:flutter/material.dart';
import 'package:plant_shop/screens/details/details_screen.dart';

import 'card_vertical.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardVertical(
            image: "assets/images/image_1.png",
            title: 'Serviço 1',
            description: 'Profissional',
            value: 46,
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetailsScreen())));
            },
          ),
          CardVertical(
            image: "assets/images/image_2.png",
            title: 'Serviço 2',
            description: 'Profissional',
            value: 46,
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetailsScreen())));
            },
          ),
          CardVertical(
            image: "assets/images/image_3.png",
            title: 'Serviço 3',
            description: 'Profissional',
            value: 46,
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => DetailsScreen())));
            },
          ),
        ],
      ),
    );
  }
}
