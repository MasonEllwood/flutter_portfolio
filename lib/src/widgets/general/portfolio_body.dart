import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/cards/portfolio_hero_mobile.dart';
import 'package:portfolio/src/widgets/cards/portfolio_hero_desktop.dart';
import 'package:portfolio/src/widgets/cards/portfolio_projects_desktop.dart';

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
            padding: EdgeInsets.only(top: 0, bottom: 25),
            shrinkWrap: true,
            children: <Widget>[
              MediaQuery.of(context).size.width > 1100 ? PortfolioHeroDesktop() : PortfolioHeroMobile(),
              Container(
                height: 45.0,
              ),
              MediaQuery.of(context).size.width > 1100 ? PortfolioProjectsDesktop() : PortfolioProjectsDesktop(),
            ],
          ),
        ),
      ),
    );
  }
}