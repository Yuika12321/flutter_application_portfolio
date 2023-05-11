import 'package:flutter/material.dart';
import 'package:flutter_application_portfolio/Chat/carrot_item.dart';
import 'package:flutter_application_portfolio/Chat/detail_page.dart';

import 'carrot_item.dart';

void main() {
  runApp(MyChat());
}

class MyChat extends StatelessWidget {
  List<Carrotitem> items = [];
  MyChat({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '123', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '234', price: 2000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '345', price: 3000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '456', price: 4000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '567', price: 5000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '678', price: 6000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '789', price: 7000));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<Carrotitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('malbob narket'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in items)
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(price: item.price),
                          ));
                    },
                    child: item)
            ],
          ),
        ));
  }
}
