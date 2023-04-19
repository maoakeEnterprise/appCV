import 'package:appcv/widget/competence/tileswidget.dart';
import 'package:flutter/material.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80,),
        TilesWidget(title: 'Application de Sport: DART/FLUTTER', subtitle: 'Permet de créer ses propres exercices, ses programme et d\'davoir '
            'un suivi sur l\'évolution de vos performances sur chaque exercice à travers un graphique -- Maîtrse de l\'architecture BLOC : Faire passer les'
            'data dans l\'application -- Maîtrise de Firebase : Authentification utilisateur, gérer/t'
            'rier les données, structurer une base de donnée'),
        TilesWidget(title: 'Application CV : DART/FLUTTER', subtitle: 'Rien'),
        TilesWidget(title: 'Tower of Heroes :Java', subtitle: 'Rien'),
        TilesWidget(title: 'Projet limbe lunaire Python', subtitle: 'Rien'),
        TilesWidget(title: 'Jeu du carré: Python', subtitle: 'Rien'),
        TilesWidget(title: 'Concours Webjam organisé par le CNAM à Tahiti : HTML / PHP / CSS / MYSQL', subtitle: 'Rien'),
      ],
    );
  }
}
