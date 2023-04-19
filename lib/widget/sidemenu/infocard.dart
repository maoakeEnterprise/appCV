import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InforCard extends StatelessWidget {
  String name, profession;
  InforCard({Key? key,required this.name,required this.profession}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(name,style: TextStyle(color: Colors.white),),
      subtitle: Text(profession,style: TextStyle(color: Colors.white),),
    );
  }
}
