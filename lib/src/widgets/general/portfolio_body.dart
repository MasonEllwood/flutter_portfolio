import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/general/portfolio_projects.dart';
import 'package:portfolio/src/widgets/cards/portfolio_hero.dart';

class PortfolioBody extends StatefulWidget {
  PortfolioBody({Key key}) : super(key: key);

  @override
  _PortfolioBodyState createState() => _PortfolioBodyState();
}

class _PortfolioBodyState extends State<PortfolioBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView(
            padding: EdgeInsets.only(top: 25, bottom: 25),
            shrinkWrap: true,
            children: <Widget>[
              PortfolioHero(),
              PortfolioProjects(),
            ],
          ),
        ),
      ),
    );
  }
}