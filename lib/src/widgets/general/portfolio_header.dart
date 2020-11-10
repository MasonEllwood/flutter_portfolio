import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/buttons/portfolio_icon_button.dart';

typedef OnTap = void Function();

class PortfolioHeader extends StatelessWidget {

  final OnTap onTap;

  PortfolioHeader({
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container( 
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: new AssetImage("assets/images/imlistening.gif"),
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                    child: PortfolioIconButton(
                      onTap: onTap,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ); 
  }
}