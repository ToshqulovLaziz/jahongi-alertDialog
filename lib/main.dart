import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Tasdiqlash'),
                  content: Text('Siz rostdan ham davom ettirmoqchimisiz?'),
                  actions: [
                    TextButton(
                      child: Text('Yoq'),
                      onPressed: () {
                        print('yoq');
                        Navigator.of(context).pop(); // Dialogni yopish
                      },
                    ),
                    TextButton(
                      child: Text('Ha'),
                      onPressed: () {
                        // Bu yerda bajarilishi kerak bo'lgan harakatlar
                        print('Ha'); // Konsolga Ha chiqarish
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text('Farqi yoq'),
                      onPressed: () {
                        // Bu yerda bajarilishi kerak bo'lgan harakatlar
                        print('Farqi yoq'); // Konsolga Ha chiqarish
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text('AlertDialogni ko\'rsatish'),
        ),
      ),
    );
  }
}
