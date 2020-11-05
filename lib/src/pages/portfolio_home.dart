import 'package:flutter/material.dart';
import 'package:portfolio/src/widgets/general/portfolio_header.dart';
import 'package:portfolio/src/widgets/general/portfolio_body.dart';
import 'package:portfolio/src/widgets/menu/portfolio_nav_drawer.dart';

class PortfolioHome extends StatefulWidget {
  PortfolioHome({Key key}) : super(key: key);

  @override
  _PortfolioHomeState createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new NavDrawer(),
      // appBar: new AppBar(
      //   leading: new IconButton(
      //     icon: new Icon(Icons.settings),
      //     onPressed: () => _scaffoldKey.currentState.openDrawer(),
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return Column(
              children: <Widget> [
                PortfolioHeader(
                  // onTap: () => _scaffoldKey.currentState.openDrawer(),
                  onTap: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
                PortfolioBody(),
              ]
            );
          }
        ),
      ),
    );
  }
}