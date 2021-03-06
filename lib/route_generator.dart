import 'package:flutter/material.dart';
import 'package:singtaxi/main.dart';
import 'StartPage.dart';
import 'package:singtaxi/LoginPage.dart';
import 'package:singtaxi/WelcomePage.dart';
import 'ProfilePage.dart';
import 'DropDownPage.dart';
class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
  final args = settings.arguments;
  switch(settings.name)
  {
    case '/': //home route
      return MaterialPageRoute(builder: (_) => StartPage());
    case '/Login':
          return MaterialPageRoute(builder: (_) => LoginPage());
    case '/Welcome':
      return MaterialPageRoute(builder: (_) => WelcomePage());
    case '/profile':
      return MaterialPageRoute(builder: (_) => ProfilePage());
    case '/DropDown':
      return MaterialPageRoute(builder: (_) => DropDownPage());
    default:
      return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ERROR'),
          )
      );
    });
  }

}