import 'dart:async';

import 'package:flutter/material.dart';

class InfoCards extends StatelessWidget {
  const InfoCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        height: 70,
        width: 355,
      decoration: BoxDecoration(
        color: Color(0xFFe8e8e8),
          borderRadius: BorderRadius.circular(10)
      ),
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(

              children: [

                Text('7 человек(а)', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Сегодня, 18:00'),
                Container(
                  margin: EdgeInsets.all(5),
                  child: SizedBox(
                      height: 25,
                      width: 150,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey
                          ),
                          child: Text('Ответить'))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
