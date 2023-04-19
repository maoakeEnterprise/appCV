part of 'sidemenubloc_bloc.dart';

@immutable
abstract class SideMenuState {
  bool? isActiveMenu;
  String? nameMenu;
  SideMenuState({this.isActiveMenu,this.nameMenu});
}

class SideMenuInitial extends SideMenuState {
}
class SideMenuStateT extends SideMenuState {
  SideMenuStateT({isActiveMenu,nameMenu}):super(isActiveMenu: isActiveMenu,nameMenu: nameMenu);
}
