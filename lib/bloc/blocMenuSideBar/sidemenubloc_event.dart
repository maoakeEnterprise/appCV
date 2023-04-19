part of 'sidemenubloc_bloc.dart';

@immutable
abstract class SideMenuEvent {
  bool? isActiveMenu;
  String? nameMenu;
  SideMenuEvent({this.isActiveMenu,this.nameMenu});
}
class MenuSideEvent extends SideMenuEvent {
  MenuSideEvent({isActiveMenu,nameMenu}):super(isActiveMenu: isActiveMenu,nameMenu: nameMenu);
}
