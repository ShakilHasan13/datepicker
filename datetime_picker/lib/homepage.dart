import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Creating DateTime Variable
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2001),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Date Picker",
        ),
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              _dateTime.toString(),
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              child: Text("Choose Date"),
              onPressed: _showDatePicker,
            ),
          )
        ]),
      ),
    );
  }
}
