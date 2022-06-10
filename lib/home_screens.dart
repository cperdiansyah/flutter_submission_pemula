import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/home_screen.dart';
import 'package:submission_flutter_pemula/model/food_data.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'asd';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              child: Text('Go to Home Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
