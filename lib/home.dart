import 'package:clone_olx/components/floatbutton.dart';
import 'package:clone_olx/components/itemlist.dart';
import 'package:clone_olx/components/tabbar.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF692CD5),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            const TabBart(),
            Expanded(
              child: ListView.separated(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return const ItemList();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 10,
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const FloatButton());
  }
}
