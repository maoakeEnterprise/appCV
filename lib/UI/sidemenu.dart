import 'package:appcv/bloc/blocMenuSideBar/sidemenubloc_bloc.dart';
import 'package:appcv/widget/sidemenu/infocard.dart';
import 'package:appcv/widget/sidemenu/sidemenutile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    context.read<SideMenuBloc>().add(MenuSideEvent(isActiveMenu: true,nameMenu: 'Compétences'));
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF172031),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: InforCard(
                  name: 'Maoake TERIIEROOITERAI',
                  profession: 'Développeur'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),
              child: Text('MENU',style: TextStyle(color: Colors.white70),),
            ),
            const Divider(
              color: Colors.grey,
            ),
            SideMenuTile(nomMenu: 'Compétences'),
            SideMenuTile(nomMenu: 'Expériences Développeur'),
            SideMenuTile(nomMenu: 'Parcours'),
            SideMenuTile(nomMenu: 'Projet Application'),
            SideMenuTile(nomMenu: 'Autre'),
          ],
        ),
      ),
    );
  }
}
