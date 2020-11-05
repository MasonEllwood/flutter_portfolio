import 'package:flutter/cupertino.dart';
import 'package:portfolio/src/models/profile_project_model.dart';

class ProfileProjectList with ChangeNotifier {
    List<ProfileProject> _projectList = [
      ProfileProject(
        id: 0,
        title: 'Kalimera',
        languages: ['Flutter', 'Dart'],
        plugins: ['cupertino_icons', 'animated_text_kit', 'carousel_slider', 'provider', 'dio'],
        description: 'Showcases ability to search based off of user input, get requests from an API, and dynamically update informaiton',
        backgroundImage: 'assets/images/Kalimera-showcase-card.jpg',
        githubUrl: 'https://github.com/MasonEllwood/kalimera_news'
      ),
      ProfileProject(
        id: 0,
        title: 'AWS Cloud Practitioner',
        // languages: ['Flutter', 'Dart'],
        // plugins: ['cupertino_icons', 'animated_text_kit', 'carousel_slider', 'provider', 'dio'],
        description: 'Issued Jun 2019. Expires Jun 2022. Credential ID: V8435DP1JFRQQYG9',
        backgroundImage: 'assets/images/AWS-showcase-card.jpg',
        githubUrl: 'https://github.com/MasonEllwood/kalimera_news'
      ),
      // ProfileProject(
      //   id: 0,
      //   title: 'Kalimera',
      //   languages: ['Flutter', 'Dart'],
      //   plugins: ['cupertino_icons', 'animated_text_kit', 'carousel_slider', 'provider', 'dio'],
      //   description: 'Showcases ability to search based off of user input, get requests from an API, and dynamically update informaiton',
      //   backgroundImage: 'assets/images/Kalimera-showcase-card.jpg',
      //   githubUrl: 'https://github.com/MasonEllwood/kalimera_news'
      // ),
    ];

    // all projects
  List getAllProjects(){
    return _projectList;
  }

  int _selected = -1;

  int get selected {
    return this._selected;
  }

  set selected(int selected) {
    this._selected = selected;
    print(_selected);
    notifyListeners();
  }

  int length(){
    return _projectList.length;
  }
}