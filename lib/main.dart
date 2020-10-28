import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/portfolio_home.dart';
import 'package:portfolio/src/transitions/fade_in_transition.dart';

// import 'package:flutterNews/src/pages/Portfolio_inner_page.dart';
// import 'package:provider/provider.dart';
// import 'package:flutterNews/src/widgets/news_feed/Portfolio_splash.dart';
// import 'package:flutterNews/src/pages/Portfolio_home.dart';
// import 'package:flutterNews/src/provider/Portfolio_news_list.dart';


void main() => runApp(Portfolio());


class Portfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return FadeIn(PortfolioHome(), settings);
          case '/':
          default:
            return FadeIn(PortfolioHome(), settings);
        }
      }
    );
  }

  // Widget withProviders(BuildContext context, Widget page) {
  //   return MultiProvider(providers: [
  //     ChangeNotifierProvider<PortfolioNewsList>(create: (_) => PortfolioNewsList()),
  //   ], child: page);
  // }

}
