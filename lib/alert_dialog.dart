import 'dart:io';

import 'package:amir_temur/grid_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  static const String id = "alert_dialog_page";

  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  void _androidDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("deleting file"),
          content: const Text("ushbu faylni o'chirmoqchimisiz"),
          actions: [
            TextButton(
              onPressed: () {
                print("faylni o'chirish bekor qilindi");
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                print("fayl o'cirilishi bekor qilindi");
                Navigator.of(context).pop();
              },
              child: const Text("Confirm"),
            ),
          ],
        );
      },
    );
  }

  void _IOSDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("Deleting file"),
          content: const Text("Ushbu faylni o'chirmoqchimisiz!"),
          actions: [
            IconButton(
              onPressed: () {
                print("faylni o'chirish bekor qilindi");
                Navigator.of(context).pop();
              },
              icon: const Text(
                "Cancel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            IconButton(
              onPressed: () {
                print("fayl o'chirib tashlandi");
                Navigator.of(context).pop();
              },
              icon: const Text(
                "Confirm",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            "Amir Temur",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, GridViewPage.id);
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/2.jpg"),
              )),
          child: Column(
            children: [
              OutlinedButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      _androidDialog();
                    } else if (Platform.isIOS) {
                      _IOSDialog();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.black)),
                  child: const Text(
                    "Deleting",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.amber,
                    ),
                  ))
            ],
          ),
        ));
  }
}
