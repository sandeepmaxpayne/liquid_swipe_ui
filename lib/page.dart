import 'package:flutter/material.dart';
import 'constant.dart';

final pages = [
  Container(
    child: ContainerPage(
      color: Colors.white,
      image: Image.asset('assets/img/secondImage.png'),
      text1: Text(
        "GoldCoin",
        style: goldCoinWhiteStyle,
      ),
      text2: Text(
        "Skip",
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'Online',
        style: greyStyle,
      ),
      dText2: Text(
        'Gambling',
        style: boldStyle,
      ),
      dText3: Text(
        'Temporary \n'
        'official\n'
        'necsses',
        style: descriptionGreyStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Color(0xff55006c),
      text1: Text(
        'GoldCoin',
        style: goldCoinWhiteStyle,
      ),
      image: Image.asset('assets/img/secondImage.png'),
      text2: Text(
        'skip',
        style: goldCoinWhiteStyle,
      ),
      dText1: Text(
        'Offline',
        style: whiteStyle,
      ),
      dText2: Text(
        'Gaming',
        style: boldStyle,
      ),
      dText3: Text(
        'Expert Gaming',
        style: descriptionWhiteStyle,
      ),
    ),
  ),
  Container(
    child: ContainerPage(
      color: Colors.orange,
      text1: Text(
        'Online',
        style: whiteStyle,
      ),
      image: Image.asset("assets/img/firstImage.png"),
      text2: Text(
        'Gamers',
        style: boldStyle,
      ),
      dText1: Text(
        'hello1',
        style: whiteStyle,
      ),
      dText2: Text(
        'hello2',
        style: boldStyle,
      ),
      dText3: Text(
        'hello3',
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
