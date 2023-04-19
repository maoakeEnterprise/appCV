import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial()) {
    on<HomePageEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<HomePageEvent1>((event, emit) {
      // TODO: implement event handler
      emit(HomePageState1(isActive: event.isActive,nomMenu: event.nomMenu));
    });
  }
}