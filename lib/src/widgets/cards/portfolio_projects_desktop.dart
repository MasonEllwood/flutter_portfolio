import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolio_text_styles.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/src/provider/profile_project_provider.dart';
// import 'package:portfolio/src/styles/portfolio_text_styles.dart';
import 'package:portfolio/src/styles/portfolio_colors.dart';

class PortfolioProjectsDesktop extends StatefulWidget {
  @override
  _PortfolioProjectsDesktopState createState() => _PortfolioProjectsDesktopState();
}

class _PortfolioProjectsDesktopState extends State<PortfolioProjectsDesktop> {
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
            Navigator.pushNamed(context, '/inner');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: <Widget>[
                    Container(
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.width * 0.25,
                      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _getAllProjects[index].title,
                              style: PortfolioTextStyles.questrialWhite60px,
                            ),
                            Text(
                              _getAllProjects[index].description,
                              style: PortfolioTextStyles.questrialWhite18px,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'languages',
                                        style: PortfolioTextStyles.questrialWhite25px,
                                      ),
                                      for(var item in _getAllProjects[index].languages ) Text(item, style: PortfolioTextStyles.questrialWhite18px),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'plugins',
                                        style: PortfolioTextStyles.questrialWhite25px,
                                      ),
                                      for(var item in _getAllProjects[index].plugins ) Text(item, style: PortfolioTextStyles.questrialWhite18px),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
}