import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final controller = TextEditingController();
   final double qrSize = 200.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter QR Code"),
        ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  
                });
              },
            ),
            const SizedBox(height: 20,),
            controller.text != "" 
              ? PrettyQr(
                elementColor: Colors.black,
                roundEdges: true,
                size: 200,
                data: controller.text,) 
              : Container(),
          ],
        ),
      ),
      ),
    );
  }
}

