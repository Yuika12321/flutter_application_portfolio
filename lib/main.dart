import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/Dice/my_dice.dart';
import 'package:flutter_application_portfolio/my_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  // 아이템 보관
  // 하단 아이템들 배열
  List<BottomNavigationBarItem> items = [];
  late Widget bodyPage;
  List<dynamic> pages = [
    const MyTimer(),
    const MyDice(),
    const MyTimer(),
    const MyTimer(),
  ];

  void movePage(int page) {
    setState(() {
      _index = page;
      bodyPage = pages[page];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.add(const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: 'home', backgroundColor: Colors.red));
    items.add(const BottomNavigationBarItem(
        icon: Icon(Icons.access_time_rounded),
        label: 'timer',
        backgroundColor: Colors.brown));
    items.add(const BottomNavigationBarItem(
        icon: Icon(Icons.checklist_rounded),
        label: 'pick',
        backgroundColor: Colors.amber));
    items.add(const BottomNavigationBarItem(
        icon: Icon(Icons.person_2_rounded),
        label: 'person',
        backgroundColor: Colors.blueAccent));

    // 첫 페이지 지정
    bodyPage = const Center(
      child: Text('asd'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: bodyPage,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              movePage(value);
            },
            // type: BottomNavigationBarType: fixed,
            currentIndex: _index,
            // backgroundColor: Colors.greenAccent,
            items: items),
      ),
    );
  }
}
