import 'package:appcv/bloc/homepage/home_page_bloc.dart';
import 'package:appcv/widget/pagecv/autre.dart';
import 'package:appcv/widget/pagecv/competences.dart';
import 'package:appcv/widget/pagecv/experiences.dart';
import 'package:appcv/widget/pagecv/parcours.dart';
import 'package:appcv/widget/pagecv/projetapplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    if(state.nomMenu == 'Compétences'){return CompetencesPage();}
                    if(state.nomMenu == 'Expériences Développeur'){return ExperiencesPage();}
                    if(state.nomMenu == 'Parcours'){return ParcoursPage();}
                    if(state.nomMenu == 'Projet Application'){return ProjetApplicationPage();}
                    if(state.nomMenu == 'Autre'){return AutresPage();}
                    return CompetencesPage();
                  },
                ),
              ))),
    );
  }
}
