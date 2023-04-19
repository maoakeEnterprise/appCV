import 'package:appcv/widget/competence/tileswidget.dart';
import 'package:flutter/material.dart';

class CompetencesPage extends StatelessWidget {
  const CompetencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 80,),
          TilesWidget(title: 'PHP', subtitle: '.Animation, Gérer les données affiché par rapport une base de donnée, Ajouter une interation avec la page'),
          TilesWidget(title: 'HTML/CSS', subtitle: '.Création d\'un site, Animation'),
          TilesWidget(title: 'AJAX', subtitle: '.Appris à l\'utiliser avec PHP pour pouvoir trier les données affiché en faisant juste un refresh d\'une partie de la page'),
          TilesWidget(title: 'JavaScript', subtitle: '.Création de petit jeu'),
          TilesWidget(title: 'Python', subtitle: '.Affichage graphique, Pratique de l\'intélligence artificiel sur le calcul du chemin le plus court sur une carte'),
          TilesWidget(title: 'JAVA', subtitle: '.Programmation orienté objet, Affichage Graphique, Création d\'aplication et d\'aplication mobile'),
          TilesWidget(title: 'UNIX', subtitle: '.Gestion de donnée,Création de script avec grep et pipe'),
          TilesWidget(title: 'DART/FLUTTER', subtitle: '.Architecture BLOC,UI/UX Design,Animation,API,UnitTesting,Test de Bout en bout'),
          TilesWidget(title: 'Firebase', subtitle: '.Gestion de donnée, Authentification, Structurée une Base de donnée, requêtes de donnée pour les trier'),
        ],
      );
  }
}
