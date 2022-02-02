import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blueAccent,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
            ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amberAccent,
                ),
                Text("Тут должен быть пользователь"),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepOrange,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigoAccent,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.tealAccent,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.limeAccent,
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
