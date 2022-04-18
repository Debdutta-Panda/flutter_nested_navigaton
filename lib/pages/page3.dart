import 'package:flutter/material.dart';

import '../navigation.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Page3"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigation.mainNavigation.currentState!.pop();
                        },
                        child: Text("Prev")
                    ),
                    TextButton(
                        onPressed: (){
                          Navigation.mainNavigation.currentState!.pushNamed("/main/4");
                        },
                        child: Text("Next")
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
