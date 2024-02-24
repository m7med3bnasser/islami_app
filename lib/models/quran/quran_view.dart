import 'package:flutter/material.dart';
import 'package:islami/models/quran/quran_%20details_View.dart';
import 'package:islami/models/quran/widget/quran_item.dart';

class Quran_View extends StatelessWidget {
  Quran_View({super.key});

  List<String> suraname = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran_header.png"),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              "رقم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
            Container(
              color: theme.primaryColor,
              width: 1.2,
              height: 45,
            ),
            Expanded(
                child: Text(
              "اسم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
          ],
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1.2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, QuranDetailsView.routename,
                    arguments: SuraDetails(
                        suraname: suraname[index], suranumber: "${index + 1}"));
              },
              child: QuranItem(
                suraName: suraname[index],
                suraNamber: "${index + 1}",
              ),
            ),
            itemCount: 50,
          ),
        )
      ],
    );
  }
}

class SuraDetails {
  final String suraname;
  final String suranumber;

  SuraDetails({required this.suraname, required this.suranumber});
}
