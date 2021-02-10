import 'package:flutter/material.dart';

import 'homepage_view.dart';

class Splash extends StatelessWidget {
  void fun() {
    Future.delayed(Duration(seconds: 5)).then((v) => print(v));
    print("sumit");
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomepageView()),
          (route) => false);
    });

    return Container(
        color: Theme.of(context).primaryColorDark,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "S",
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              "anket",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        )));
  }
}
