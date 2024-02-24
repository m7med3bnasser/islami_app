import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'hadeth_ details_View.dart';

class Hadeth_View extends StatefulWidget {
  Hadeth_View({super.key});

  @override
  State<Hadeth_View> createState() => _Hadeth_ViewState();
}

class _Hadeth_ViewState extends State<Hadeth_View> {
  List<HadethContant> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.routename,
                    arguments: HadethContant(
                        title: allHadethContent[index].title,
                        contant: allHadethContent[index].contant));
              },
              child: Text(
                allHadethContent[index].title,
                textAlign: TextAlign.center,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              endIndent: 80,
              indent: 80,
              color: theme.primaryColor,
              height: 10,
            ),
            itemCount: allHadethContent.length,
          ),
        )
      ],
    );
  }

  readFile() async {
    String allHadethcontant =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = allHadethcontant.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexofFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexofFirstLine);
      String contant = singleHadeth.substring(indexofFirstLine + 1);
      HadethContant hadethContant =
          HadethContant(title: title, contant: contant);

      setState(() {
        allHadethContent.add(hadethContant);
      });
    }
  }
}

class HadethContant {
  final String title;
  final String contant;

  HadethContant({required this.title, required this.contant});
}
