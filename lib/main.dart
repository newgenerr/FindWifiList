import 'package:findwifilist/ConnectivityPlus.dart';
import 'package:findwifilist/NetworkInfoPlus.dart';
import 'package:findwifilist/ScanWifi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              child: const Text('1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScanWifi()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnectivityPlus()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NetworkInfoPlus()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
