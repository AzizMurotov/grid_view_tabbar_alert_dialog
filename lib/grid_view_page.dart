import 'package:amir_temur/alert_dialog.dart';
import 'package:amir_temur/tab_bar_page.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  static const String id = "grid_view_page";

  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, AlertDialogPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Galereya"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, MyTabBar.id);
          }, icon: const Icon(Icons.arrow_forward),),
        ],
      ),
      body: GridView.count(crossAxisCount: 2,
      children: [
        _itemsGridView("assets/images/1.jpg", "Amir Temur"),
        _itemsGridView("assets/images/2.jpg", "Amir Temur"),
        _itemsGridView("assets/images/3.jpg", "Amir Temur"),
        _itemsGridView("assets/images/4.jpg", "Amir Temur"),
        _itemsGridView("assets/images/5.jpg", "Amir Temur"),
        _itemsGridView("assets/images/6.jpg", "Amir Temur"),
        _itemsGridView("assets/images/7.jpg", "Amir Temur"),
        _itemsGridView("assets/images/8.jpg", "Amir Temur"),
        _itemsGridView("assets/images/9.jpg", "Amir Temur"),
        _itemsGridView("assets/images/10.jpg", "Amir Temur"),
        _itemsGridView("assets/images/11.jpg", "Amir Temur"),
        _itemsGridView("assets/images/12.jpg", "Amir Temur"),
        _itemsGridView("assets/images/13.jpg", "Amir Temur"),

      ],),
    );
  }

  Widget _itemsGridView(picture, name) {
    return Container(
      color: Colors.cyan,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(picture),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
