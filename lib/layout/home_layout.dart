import 'package:flutter/material.dart';
import 'package:islami/models/hadeth/hadeth_View.dart';
import 'package:islami/models/quran/quran_view.dart';
import 'package:islami/models/radio/radio_view.dart';
import 'package:islami/models/settings/setting_view.dart';
import 'package:islami/models/tasbeh/tasbeh_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routename = "HpmeLayout";

   HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
   int selectedIndex = 0;
   List<Widget> screens=[
     Quran_View(),
     Hadeth_View(),
     Tasbeh_View(),
     Radio_View(),
     Setting_View(),
   ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body:screens[selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
           setState(() {
             selectedIndex = index;
           });

          },
           currentIndex:selectedIndex ,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "القرأن"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icon.png")),
                  label: "الحديث"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "السبحه"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "الراديو"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "الاعدادات"),
            ]),
      ),
    );
  }
}
