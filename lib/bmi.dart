import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double _hight = 150;
  double _weight = 60;
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: hight / 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hight",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _hight,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              onChanged: (val) {
                setState(() {
                  _hight = val;
                });
              },
              min: 110,
              max: 200,
              divisions: 4,
              label: _hight.round().toString(),
            ),
            Text(
              '$_hight cm',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Weight",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _weight,
              activeColor: Colors.orange,
              inactiveColor: Colors.grey,
              onChanged: (val) {
                setState(() {
                  _weight = val;
                });
              },
              min: 40,
              max: 200,
              divisions: 5,
              label: _weight.round().toString(),
            ),
            Text(
              '$_weight kg',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Switch between Male and Female for Animation",
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            "Male",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: Radio<int>(
              value: 1,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val;
                });
              }),
        ),
        ListTile(
          title: Text(
            "Female",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: Radio<int>(
              value: 2,
              groupValue: _value,
              onChanged: (val) {
                setState(() {
                  _value = val;
                });
              }),
        ),
        SizedBox(
          height: 20,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 2),
          width: _value == 1 ? width * 0.4 : width * 0.5,
          height: _value == 1 ? hight / 4 : hight / 3,
          color: _value == 1 ? Colors.green : Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                _value == 1 ? 'Male' : 'Female',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hight',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_hight cm',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$_weight kg',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
