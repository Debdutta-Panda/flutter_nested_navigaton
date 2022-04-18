import 'package:flutter/material.dart';
import 'package:flutter_nested_navigaton/pages/page1.dart';
import 'package:flutter_nested_navigaton/pages/page2.dart';
import 'package:flutter_nested_navigaton/pages/page3.dart';
import 'package:flutter_nested_navigaton/pages/page4.dart';

import '../navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Main Page"),
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                    child: Navigator(
                      key: Navigation.mainNavigation,
                      initialRoute: "/",
                      onGenerateRoute: (RouteSettings settings){

                        Widget page;

                        switch(settings.name){
                          case "/": {
                            page = Page1();
                            break;
                          }
                          case "/main/2": {
                            page = Page2();
                            break;
                          }
                          case "/main/3": {
                            page = Page3();
                            break;
                          }
                          case "/main/4": {
                            page = Page4();
                            break;
                          }
                          default:{
                            page = Page1();
                          }
                        }

                        return PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => page,
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            final tween = Tween(begin: begin, end: end);
                            final offsetAnimation = animation.drive(tween);
                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        );
                      },
                    )
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: (){
                            Navigation.mainNavigation.currentState!.pushReplacementNamed("/");
                          },
                          child: Text("Page1")
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: (){
                            Navigation.mainNavigation.currentState!.pushReplacementNamed("/main/2");
                          },
                          child: Text("Page2")
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: (){
                            Navigation.mainNavigation.currentState!.pushReplacementNamed("/main/3");
                          },
                          child: Text("Page3")
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: (){
                            Navigation.mainNavigation.currentState!.pushReplacementNamed("/main/4");
                          },
                          child: Text("Page4")
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
