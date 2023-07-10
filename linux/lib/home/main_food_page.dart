import 'package:flutter/material.dart';

class MainFoogPage extends StatefulWidget {
  const MainFoogPage({Key? key}) : super(key: key);

  @override
  State<MainFoogPage> createState() => _MainFoogPageState();
}

class _MainFoogPageState extends State<MainFoogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text("Country"), Text("City")],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
