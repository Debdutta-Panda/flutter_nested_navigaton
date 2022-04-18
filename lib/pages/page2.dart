import 'package:flutter/material.dart';

import '../navigation.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Page2"),
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
                          Navigation.mainNavigation.currentState!.pushNamed("/main/3");
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
