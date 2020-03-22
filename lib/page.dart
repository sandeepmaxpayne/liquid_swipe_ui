import 'package:flutter/material.dart';
import 'constant.dart';

final pages = [
  Container(
    child: ContainerPage(
      color: Colors.lightGreen.shade900,
      text1: Text(
        'online Purchase',
        style: goldCoinWhiteStyle,
      ),
      image: Image.asset(
        "assets/img/car_batt.png",
        fit: BoxFit.fill,
      ),
      text2: Text(
        'offline Purchase',
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'TYPE',
        style: whiteStyle,
      ),
      dText2: Text(
        'Car Battery',
        style: boldStyle,
      ),
      dText3: Text(
        'unavailable',
        style: descriptionWhiteStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Colors.lightGreen.shade400,
      text1: Text(
        'online Purchase',
        style: goldCoinWhiteStyle,
      ),
      image: Image.asset("assets/img/pencil_battery.png", fit: BoxFit.fill),
      text2: Text(
        'offline Purchase',
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'TYPE',
        style: whiteStyle,
      ),
      dText2: Text(
        'Pencil Cell',
        style: boldStyle,
      ),
      dText3: Text(
        'available',
        style: descriptionWhiteStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Color(0xFF134CA2),
      image: Image.asset('assets/img/luminous_battery.png', fit: BoxFit.fill),
      text1: Text(
        "online purchase",
        style: goldCoinWhiteStyle,
      ),
      text2: Text(
        "offline purchase",
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'TYPE',
        style: greyStyle,
      ),
      dText2: Text(
        'Home Battery',
        style: boldStyle,
      ),
      dText3: Text(
        'available',
        style: descriptionGreyStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Color(0xff55006c),
      text1: Text(
        'online purchase',
        style: goldCoinWhiteStyle,
      ),
      image: Image.asset('assets/img/battery2.png', fit: BoxFit.fill),
      text2: Text(
        'offline purchase',
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'TYPR',
        style: whiteStyle,
      ),
      dText2: Text(
        'Home Battery',
        style: boldStyle,
      ),
      dText3: Text(
        'available',
        style: descriptionWhiteStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Colors.orange,
      text1: Text(
        'online purchase',
        style: goldCoinWhiteStyle,
      ),
      image: Image.asset("assets/img/battery.png", fit: BoxFit.fill),
      text2: Text(
        'offline purchase',
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'TYPE',
        style: goldCoinWhiteStyle,
      ),
      dText2: Text(
        'Home Battery',
        style: boldStyle,
      ),
      dText3: Text(
        'available',
        style: descriptionWhiteStyle,
      ),
    ),
  )
];

class ContainerPage extends StatelessWidget {
  final Color color;
  final Text text1;
  final Text text2;
  final Text dText1;
  final Text dText2;
  final Text dText3;
  final Widget image;
  ContainerPage(
      {@required this.color,
      @required this.text1,
      @required this.image,
      @required this.text2,
      this.dText1,
      this.dText2,
      this.dText3});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                text1,
                text2,
              ],
            ),
          ),
          image,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                dText1,
                dText2,
                SizedBox(
                  height: 20.0,
                ),
                dText3
              ],
            ),
          ),
        ],
      ),
    );
  }
}
