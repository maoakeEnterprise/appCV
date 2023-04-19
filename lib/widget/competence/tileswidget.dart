import 'package:appcv/themes/themes.dart';
import 'package:flutter/material.dart';

class TilesWidget extends StatelessWidget {
  String title;
  String subtitle;
  TilesWidget({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: const Color(0xFF364C62),
            borderRadius: BorderRadius.circular(15)
        ),
        child: ListTile(
          title: Text(title,style: Themes.titleStyle,),
          subtitle: Text(subtitle,style: Themes.descriptifStyle,),
        )
    );
  }
}
