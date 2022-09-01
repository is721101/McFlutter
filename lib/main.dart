// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool TimerSelected = false;
  bool AccessibilitySelected = false;
  bool Phone1Selected = false;
  bool Phone2Selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.account_circle_sharp),
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Flutter McFlutter",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Experienced App Developer"))
                        ])
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("123 Main Street"), Text("(415)555-0198")],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              AccessibilitySelected = !AccessibilitySelected;
                              setState(() {});
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "Únete a un club con otras personas"),
                                  ),
                                );
                            },
                            icon: Icon(Icons.accessibility),
                            color: AccessibilitySelected
                                ? Colors.indigo
                                : Colors.black),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "Cuenta regresiva para el evento: 31 días"),
                                  ),
                                );
                              TimerSelected = !TimerSelected;
                              setState(() {});
                            },
                            icon: Icon(Icons.timer),
                            color:
                                TimerSelected ? Colors.indigo : Colors.black),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text("Llama al número 4155550198"),
                                  ),
                                );
                              Phone1Selected = !Phone1Selected;
                              setState(() {});
                            },
                            icon: Icon(Icons.stay_current_portrait),
                            color:
                                Phone1Selected ? Colors.indigo : Colors.black),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content:
                                        Text("Llama al celular 3317865113"),
                                  ),
                                );
                              Phone2Selected = !Phone2Selected;
                              setState(() {});
                            },
                            icon: Icon(Icons.phone_iphone),
                            color:
                                Phone2Selected ? Colors.indigo : Colors.black)
                      ])),
            ],
          ),
        ));
  }
}
