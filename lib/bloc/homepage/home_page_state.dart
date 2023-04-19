part of 'home_page_bloc.dart';

@immutable
abstract class HomePageState {
  bool? isActive;
  String? nomMenu;
  HomePageState({this.isActive,this.nomMenu});
}

class HomePageInitial extends HomePageState {}
class HomePageState1 extends HomePageState {
  HomePageState1({isActive,nomMenu}):super(isActive: isActive,nomMenu: nomMenu);
}
