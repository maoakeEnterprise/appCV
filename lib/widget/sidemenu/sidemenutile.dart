import 'package:appcv/bloc/homepage/home_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenuTile extends StatelessWidget {

  String nomMenu;

  SideMenuTile({Key? key, required this.nomMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAct = false;
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        if(state.nomMenu == nomMenu){
          isAct = true;
        }
        else{
          isAct = false;
        }
        return Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                left: 0,
                height: 56,
                width: isAct ? 288 : 0,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF6792FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                )),
            ListTile(
              leading: Icon(getIconMenu(nomMenu), color: Colors.white,),
              title: Text(nomMenu, style: TextStyle(color: Colors.white),),
              onTap: () {
                context.read<HomePageBloc>().add(HomePageEvent1(isActive: state.isActive,nomMenu: this.nomMenu));
              },
            ),
          ],
        );
      },
    );
  }

  IconData getIconMenu(String nomMenu) {
    const map = {
      'Compétences': Icons.schema_outlined,
      'Expériences Développeur': Icons.content_paste_sharp,
      'Parcours': Icons.school_outlined,
      'Projet Application': Icons.ad_units_rounded,
      'Autre': Icons.contact_support
    };
    return map[nomMenu] ?? Icons.adb;
  }
  bool getOppositeActive(bool isActive){
    return !isActive;
  }

}
