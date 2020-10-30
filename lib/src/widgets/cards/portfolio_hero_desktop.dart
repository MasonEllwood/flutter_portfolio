import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolio_text_styles.dart';
import 'package:portfolio/src/styles/portfolio_colors.dart';

class PortfolioHeroDesktop extends StatefulWidget {
  @override
  _PortfolioHeroDesktopState createState() => _PortfolioHeroDesktopState();
}

class _PortfolioHeroDesktopState extends State<PortfolioHeroDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.50,
          height: MediaQuery.of(context).size.width * 0.40,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,0.0,45.0,0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mason',
                  style: PortfolioTextStyles.questrial60px,
                ),
                Text(
                  'Ellwood',
                  style: PortfolioTextStyles.questrial60px,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,35.0,0.0,8.0),
                  child: Text(
                    'Websites, Flutter, and Things',
                    style: PortfolioTextStyles.questrialLightForest24px,
                  ),
                ),
                Text(
                  'My name is Mason, and have been in the tech world for a little bit now.',
                  style: PortfolioTextStyles.questrialLightForest18px,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.50,
          height: MediaQuery.of(context).size.width * 0.40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: PortfolioColors.lightpink,
                offset: Offset(15.0, 15.0),
              )
            ],
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 20,
                      ), 
                    ),
                    child: Image(
                      image: new AssetImage("assets/images/meandpa.jpeg"),
                      height: MediaQuery.of(context).size.width * 0.30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}