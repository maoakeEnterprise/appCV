import 'package:appcv/widget/competence/tileswidget.dart';
import 'package:flutter/material.dart';

class ParcoursPage extends StatelessWidget {
  const ParcoursPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        TilesWidget(title: 'Développement mobile FLutter/Firebase - Autodidacte', subtitle: 'Rien'),
        TilesWidget(title: 'Entrepreneuriat,Startup & Innovation, Ynov Campus Bordeaux', subtitle: 'Rien'),
        TilesWidget(title: 'Licence informatique Généraliste - Université de la Polynésie Française', subtitle: 'Rien'),
      ],
    );
  }
}
