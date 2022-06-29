import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({
    Key? key,
    this.data
  }) : super(key: key);

  String? data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black87,
        title: const Text('Routing'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/secondscreen', arguments: 'From the first page');
              },
              icon: const Icon(Icons.forward),
              label: const Text('Second screen'),
            ),
            const SizedBox(height: 20,),
            Text(
              data == null
                ? 'Welcome!'
                : data as String,
              style:
                const TextStyle(
                  fontSize: 20
                ))
          ],
        ),
      ),
    );
  }
}
