import 'package:flutter/material.dart';
import 'package:portfolio/src/pages/portfolio_home.dart';
import 'package:portfolio/src/transitions/fade_in_transition.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/src/provider/profile_project_provider.dart';

void main() => runApp(Portfolio());


class Portfolio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return withProviders(
      context,
      MaterialApp(
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
      ),
    );
  }

  Widget withProviders(BuildContext context, Widget page) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ProfileProjectList>(create: (_) => ProfileProjectList()),
    ], child: page);
  }

}
