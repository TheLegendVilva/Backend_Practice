import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void user_str(String s)
{
  print(s);
}

void pass_str(String s)
{
  print(s);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff0b1320),
          appBar: AppBar(
            backgroundColor: Color(0xff0b1320),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 70, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Username/email ID'),
                      onSubmitted: user_str,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password ',),
                      onSubmitted: pass_str,
                      obscureText: true,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
