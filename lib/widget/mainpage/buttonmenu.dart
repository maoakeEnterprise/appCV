import 'package:appcv/bloc/homepage/home_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonMenu extends StatelessWidget {

  const ButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top:10),
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            if(state is HomePageState1){
              isActive = state.isActive!;
            }
            return GestureDetector(
              onTap: () {
                context.read<HomePageBloc>().add(HomePageEvent1(isActive: !isActive,nomMenu: state.nomMenu));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 3),
                      blurRadius: 8,
                    )
                    ]
                ),
                child: Icon(getIconActiveOrNot(isActive), color: Colors.black,),
              ),
            );
          },
        ),
      ),
    );
  }

  IconData getIconActiveOrNot(bool isActive){
    if(isActive){
      return Icons.menu_rounded;
    }
    return Icons.close;
  }
}
