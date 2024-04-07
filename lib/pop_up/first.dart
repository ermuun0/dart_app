import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _currentIntValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NumberPicker(
          value: _currentIntValue,
          minValue: 10,
          maxValue: 100,
          step: 10,
          haptics: true,
          onChanged: (value) => setState(() => _currentIntValue = value),
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () => setState(() {
                final newValue = _currentIntValue - 10;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
            Text('Current int value: $_currentIntValue'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => setState(() {
                final newValue = _currentIntValue + 20;
                _currentIntValue = newValue.clamp(0, 100);
              }),
            ),
          ],
        ),
        // Divider(color: Colors.grey, height: 32),
        // Text('Horizontal', style: Theme.of(context).textTheme.headline6),
        // NumberPicker(
        //   value: _currentHorizontalIntValue,
        //   minValue: 0,
        //   maxValue: 100,
        //   step: 10,
        //   itemHeight: 100,
        //   axis: Axis.horizontal,
        //   onChanged: (value) =>
        //       setState(() => _currentHorizontalIntValue = value),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     border: Border.all(color: Colors.black26),
        //   ),
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     IconButton(
        //       icon: Icon(Icons.remove),
        //       onPressed: () => setState(() {
        //         final newValue = _currentHorizontalIntValue - 10;
        //         _currentHorizontalIntValue = newValue.clamp(0, 100);
        //       }),
        //     ),
        //     Text('Current horizontal int value: $_currentHorizontalIntValue'),
        //     IconButton(
        //       icon: Icon(Icons.add),
        //       onPressed: () => setState(() {
        //         final newValue = _currentHorizontalIntValue + 20;
        //         _currentHorizontalIntValue = newValue.clamp(0, 100);
        //       }),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
