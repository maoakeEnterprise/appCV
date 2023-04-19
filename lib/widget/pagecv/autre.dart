import 'package:appcv/widget/competence/tileswidget.dart';
import 'package:flutter/material.dart';

class AutresPage extends StatelessWidget {
  const AutresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        TilesWidget(title: 'Carrefour Market', subtitle: 'Employé Commercial - CDI'),
        TilesWidget(title: 'Stage ', subtitle: 'Employé Commercial - CDI'),
        TilesWidget(title: 'Chantier finisseur de maison ', subtitle: 'Employé Commercial - CDI'),
      ],
    );
  }
}
