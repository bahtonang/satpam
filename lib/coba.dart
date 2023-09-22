import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Ini Page Patroli",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text('Data Patorli')),
          ],
        ),
      ),
    );
  }
}
