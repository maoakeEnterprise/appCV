import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sidemenubloc_event.dart';
part 'sidemenubloc_state.dart';

class SideMenuBloc extends Bloc<SideMenuEvent, SideMenuState> {
  SideMenuBloc() : super(SideMenuInitial()) {
    on<SideMenuEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<MenuSideEvent>((event, emit) {
      // TODO: implement event handler
      emit(SideMenuStateT(isActiveMenu: event.isActiveMenu,nameMenu: event.nameMenu));
    });
  }
}
