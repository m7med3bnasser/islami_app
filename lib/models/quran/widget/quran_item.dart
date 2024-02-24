import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNamber;

  const QuranItem(
      {super.key, required this.suraName, required this.suraNamber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
            child: Text(
          suraNamber,
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
          suraName,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
      ],
    );
  }
}
