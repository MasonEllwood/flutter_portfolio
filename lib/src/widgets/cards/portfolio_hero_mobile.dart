import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolio_text_styles.dart';

class PortfolioHeroMobile extends StatefulWidget {
  @override
  _PortfolioHeroMobileState createState() => _PortfolioHeroMobileState();
}

class _PortfolioHeroMobileState extends State<PortfolioHeroMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0,25.0,0.0,20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mason',
                  style: PortfolioTextStyles.questrialBlack60px,
                ),
                Text(
                  'Ellwood',
                  style: PortfolioTextStyles.questrialBlack60px,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,35.0,0.0,8.0),
                  child: Text(
                    'Websites, Flutter, and Things',
                    style: PortfolioTextStyles.questrialLightForest25px,
                  ),
                ),
                Text(
                  'My name is Mason, and have been in the tech world for a little bit now.',
                  style: PortfolioTextStyles.questrialLightForest16px,
                ),
              ],
            ),
          ),
        ),
        Container(
          color:  Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/meandpa.jpeg"), 
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                        )
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.50,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}