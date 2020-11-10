import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Check it all out.',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('./assets/images/meandlane.jpg')
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Project Code'),
            onTap: () => {_launchProjectURL()},
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('GitHub'),
            onTap: () => {_launchGITURL()},
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Linkedin'),
            onTap: () => {_launchLinkedInURL()},
          ),
        ],
      ),
    );
  }
  _launchProjectURL() async {
    const url = 'https://github.com/MasonEllwood/flutter_portfolio';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchGITURL() async {
    const url = 'https://github.com/MasonEllwood';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchLinkedInURL() async {
    const url = 'https://www.linkedin.com/in/mason-ellwood-013400111';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}