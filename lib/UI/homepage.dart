import 'package:appcv/UI/bodypage.dart';
import 'package:appcv/UI/sidemenu.dart';
import 'package:appcv/bloc/homepage/home_page_bloc.dart';
import 'package:appcv/widget/mainpage/buttonmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool sideMenuIsOpen = false;
    context.read<HomePageBloc>().add(HomePageEvent1(isActive: false,nomMenu: 'Compétences'));
    return Container(
      color: const Color(0xFF172031),
      child: Stack(
        children: [
          BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              if (state.isActive != null) {
                sideMenuIsOpen = state.isActive!;
              }
              return AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.fastOutSlowIn,
                  width: 288,
                  left: sideMenuIsOpen ? -288 : 0,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  child: SideBarMenu()
              );
            },
          ),
          BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return Transform.translate(
                offset: Offset(sideMenuIsOpen ? 0 : 288, 0),
                child: AnimatedScale(
                    duration: const Duration(milliseconds: 200),
                    scale: sideMenuIsOpen ? 1 : 0.8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        child: GestureDetector(
                          child: BodyPage(),
                            onHorizontalDragEnd: (DragEndDetails details){
                            if(details.primaryVelocity! > 0){
                              context.read<HomePageBloc>().add(HomePageEvent1(isActive: false,nomMenu: state.nomMenu));
                            }
                            }
                        )
                    )
                ),
              );
            },
          ),
          BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: sideMenuIsOpen? 10:254,
                  top: sideMenuIsOpen? 0 : 50,
                  child: ButtonMenu()
              );
            },
          ),
        ],
      ),
    );
  }
}
