import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu Toast',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Toast App'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'menu1') {
                _showToast('Menu 1 Clicked');
              } else if (value == 'menu2') {
                _showToast('Menu 2 Clicked');
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'menu1', child: Text('Menu 1')),
              PopupMenuItem(value: 'menu2', child: Text('Menu 2')),
            ],
          ),
        ],
      ),
      body: const Center(child: Text('Tap the menu in the app bar')),
    );
  }
}
