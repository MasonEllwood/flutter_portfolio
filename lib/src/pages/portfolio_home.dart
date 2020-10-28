import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/general/portfolio_header.dart';
import 'package:portfolio/src/widgets/general/portfolio_body.dart';

class PortfolioHome extends StatefulWidget {
  PortfolioHome({Key key}) : super(key: key);

  @override
  _PortfolioHomeState createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return Column(
              children: <Widget> [
                PortfolioHeader(),
                PortfolioBody(),
              ]
            );
          }
        ),
      ),
    );
  }
}