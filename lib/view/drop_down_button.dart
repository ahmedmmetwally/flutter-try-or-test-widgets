import 'package:flutter/material.dart';

class DropDownButtonn extends StatefulWidget {
  static const routeDropDownButton="/DropDownButton";
  @override
  _DropDownButtonnState createState() => _DropDownButtonnState();
}

class _DropDownButtonnState extends State<DropDownButtonn> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.red),
                underline: Container(
                  height: 2,
                  color: Colors.yellow,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              ElevatedButton(
                style: style,
                onPressed: null,
                child: const Text('Disabled'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Enabled'),
              ),
            ],
          ),
        ),
      ),
      //                 out body
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}
