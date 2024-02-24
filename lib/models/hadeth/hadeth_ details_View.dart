import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadeth/hadeth_View.dart';
import 'package:islami/models/quran/quran_view.dart';

class HadethDetailsView extends StatefulWidget {
  static const String routename = "Hadeth_Details";

  HadethDetailsView({super.key});

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  String coontent = "";
  List<String>allVarses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContant;


    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyLarge,
              ),


              Divider(
                color: theme.primaryColor,
                endIndent: 30,
                indent: 30,
                height: 10,
                thickness: 1.2,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder:(context, index) => Text(
                    args.contant,textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ), 
                  
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


}
