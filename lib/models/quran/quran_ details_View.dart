import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routename = "Quran_Details";

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String coontent = "";
  List<String>allVarses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (coontent.isEmpty) readFiles(args.suranumber);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraname}",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: Colors.black,
                  )
                ],
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
                  itemBuilder: (context, index) => Text(
                    coontent,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    coontent = text;
    
    setState(() {allVarses =coontent.split("\n");});
  }
}
