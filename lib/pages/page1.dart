import 'package:flutter/material.dart';

import '../navigation.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Page1"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigation.mainNavigation.currentState!.pushNamed("/main/2");
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
