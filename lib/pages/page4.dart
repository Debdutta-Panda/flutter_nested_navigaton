import 'package:flutter/material.dart';

import '../navigation.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Page4"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigation.mainNavigation.currentState!.pop();
                        },
                        child: Text("Prev")
                    ),
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
