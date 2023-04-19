part of 'home_page_bloc.dart';

@immutable
abstract class HomePageEvent {
  bool? isActive;
  String? nomMenu;
  HomePageEvent({this.isActive,this.nomMenu});
}
class HomePageEvent1 extends HomePageEvent {
  HomePageEvent1({isActive,nomMenu}):super(isActive: isActive,nomMenu: nomMenu);
}
