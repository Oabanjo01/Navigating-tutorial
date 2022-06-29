import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({ Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    // final String args = ModalRoute.of(context)!.settings.arguments;
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
                Navigator.popAndPushNamed(context, '/', arguments: 'From second screen');
              },
              icon: const Icon(Icons.arrow_back_outlined),
              label: const Text('Home screen'),
            ),
            const SizedBox(height: 20,),
            Text(
              data, 
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

// Using just push
// Navigator.of(context).push(
//   MaterialPageRoute(builder: (context) {
//     return SecondScreen();
//   })
// );