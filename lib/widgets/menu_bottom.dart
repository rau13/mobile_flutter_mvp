import 'package:flutter/material.dart';

class BottomMenuForm extends StatefulWidget {
  const BottomMenuForm({Key? key}) : super(key: key);

  @override
  State<BottomMenuForm> createState() => _BottomMenuFormState();
}

class _BottomMenuFormState extends State<BottomMenuForm> {
  var checkedValue = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 460,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/close-circle.jpg'),
                ],
              ),
            ),
            Text('Пожалуйста, укажите причину отказа бронирования', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            )),
          CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Отсутствие свободных столиков", style: TextStyle(
                    fontSize: 11,
                  ),),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                   //  <-- leading Checkbox
                ),
            Text('или опишите подробней ниже:'),
            SizedBox(height: 15),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black
                )
              ),
              child: TextField(
                enabled: checkedValue,
                obscureText: false,
                maxLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54
                  ),
                  child: Text('Подтвердить отмену',
                    style: TextStyle(
                      color: Colors.white
                    ))),
            )
          ],
        ),
      ),
    );
  }
}
