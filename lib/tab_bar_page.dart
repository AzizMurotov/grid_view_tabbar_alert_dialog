import 'package:amir_temur/drawer_page.dart';
import 'package:amir_temur/grid_view_page.dart';
import 'package:flutter/material.dart';

import 'alert_dialog.dart';

class MyTabBar extends StatefulWidget {
  static const String id = "tab_bar";

  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const DrawerPage(),
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("Amir Temur haqida qisqacha"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GridViewPage.id);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.book_outlined),
                text: "tarix",
              ),
              Tab(
                icon: Icon(Icons.multitrack_audio_sharp),
                text: "Inshootlar",
              ),
              Tab(
                icon: Icon(Icons.map),
                text: "Xarita",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        "Amir Temur, Temur, "
                        "Temurbek (toʻliq ismi Amir Temur"
                        " ibn Amir Taragʻay ibn Amir Barqul)"
                        " (1336-yil, 9-aprel — 1405-yil, 18-fevral) "
                        "— oʻrta asrning yirik davlat arbobi, buyuk "
                        "turkiy sarkardasi, kuchli, markazlashgan davlat"
                        " asoschisi, ilm-fan va madaniyat homiysi.Amir "
                        "Temurning onasi Takina xonim edi. Otasi Amir"
                        " Taragʻay esa turkiy barlos urugʻining oqsoqollaridan"
                        " hamda Chigʻatoy ulusining eʼtiborli beklaridan"
                        " hisoblangan. Uning buyuk ajdodlari Kesh viloyatida"
                        " hokimlik qilishgan. Shu bois Amir Temurning otasi "
                        "amir Taragʻay ham yilda bir marotaba Ili daryosi boʻyida "
                        "xon tomonidan chaqiriladigan el-yurt beklarining"
                        " qurultoyiga taklif etilar va u bunday yigʻinlarda"
                        " muttasil qatnashar edi. Shu bilan birga u,"
                        " Sharafuddin Yazdiyning taʼkidlashiga koʻra, "
                        "„ulamo va sulaho va muttaqiylargʻa mushfiq va"
                        " mehribon erdi va bularning majlisiga borur erdi…“."
                        " Taragʻayjon piri Shamsuddin Kulolni ayniqsa chuqur"
                        " ehtirom qilgan. Keyinchalik shayx Kulol Amir Temurning"
                        " ham piri boʻlgan. Taragʻaybek 1405-yilda vafot etgan.",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
           GridView.count(crossAxisCount: 2, children: [
             Container(
               decoration: BoxDecoration(
                 border: Border.all(width: 5,color: Colors.amber),
                 image: const DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage("assets/images/a1.jpg"),
                 )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a2.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a3.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a4.jpg"),
                   )
               ),
             ),
            Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a5.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a6.jpg"),
                   )
               ),
             ),
             Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a7.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a8.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a9.jpg"),
                   )
               ),
             ),
             Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a10.jpg"),
                   )
               ),
             ),
             Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a11.jpg"),
                   )
               ),
             ),
            Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a12.jpg"),
                   )
               ),
             ),
              Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a13.jpg"),
                   )
               ),
             ),
            Container(
               decoration: BoxDecoration(
                   border: Border.all(width: 5,color: Colors.amber),
                   image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/a14.jpg"),
                   )
               ),
             ),
           ],),
            Container(

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/xarita.jpg"),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
