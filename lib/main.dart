import 'package:appcv/UI/homepage.dart';
import 'package:appcv/UI/sidemenu.dart';
import 'package:appcv/bloc/homepage/home_page_bloc.dart';
import 'package:appcv/widget/mainpage/buttonmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/blocMenuSideBar/sidemenubloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<SideMenuBloc>(
          create: (BuildContext context) => SideMenuBloc(),
        ),
        BlocProvider<HomePageBloc>(
          create: (BuildContext context) => HomePageBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}


