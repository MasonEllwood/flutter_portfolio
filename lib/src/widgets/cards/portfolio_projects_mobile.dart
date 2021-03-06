import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolio_text_styles.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/src/provider/profile_project_provider.dart';
import 'package:portfolio/src/styles/portfolio_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioProjectsMobile extends StatefulWidget {
  @override
  _PortfolioProjectsMobileState createState() => _PortfolioProjectsMobileState();
}

class _PortfolioProjectsMobileState extends State<PortfolioProjectsMobile> {
  @override
  Widget build(BuildContext context) {

    ProfileProjectList _projectList = Provider.of<ProfileProjectList>(context);
    List<dynamic> _getAllProjects = _projectList.getAllProjects();
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _getAllProjects.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            _projectList.selected = index;
            _launchProjectURL(_getAllProjects[_projectList.selected].projectUrl);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("${_getAllProjects[index].backgroundImage}"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: PortfolioColors.lightpink,
                        offset: Offset(15.0, 15.0),
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.width * 0.25,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getAllProjects[index].title,
                      style: PortfolioTextStyles.questrialBlack35px,
                    ),
                    Text(
                      _getAllProjects[index].description,
                      style: PortfolioTextStyles.questrialBlack18px,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_getAllProjects[index].languages != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'languages',
                                  style: PortfolioTextStyles.questrialBlack25px,
                                ),
                                for(var item in _getAllProjects[index].languages ) Text(item, style: PortfolioTextStyles.questrialBlack18px),
                              ],
                            ),
                          if (_getAllProjects[index].plugins != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'plugins',
                                  style: PortfolioTextStyles.questrialBlack25px,
                                ),
                                for(var item in _getAllProjects[index].plugins ) Text(item, style: PortfolioTextStyles.questrialBlack18px),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  _launchProjectURL(projectUrl) async {
    String url = projectUrl;
      if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}