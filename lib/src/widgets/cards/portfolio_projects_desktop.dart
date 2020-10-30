import 'package:flutter/material.dart';
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
          child: Padding(
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
                  width: MediaQuery.of(context).size.width * 0.957,
                  height: MediaQuery.of(context).size.width * 0.25,
                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
                ),
                Container(
                  color: Colors.pink,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.25,
                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getAllProjects[index].title,
                      ),
                      Text(
                        _getAllProjects[index].description,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}