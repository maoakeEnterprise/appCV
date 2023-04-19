import 'package:appcv/widget/competence/tileswidget.dart';
import 'package:flutter/material.dart';

class ProjetApplicationPage extends StatelessWidget {
  const ProjetApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80,),
        TilesWidget(title: 'Projet réduction des produits périmés jeté en casse', subtitle: 'Explication'),
        TilesWidget(title: 'ChatBot ChatGPT', subtitle: 'Explication'),
        TilesWidget(title: 'Retouche Application de sport', subtitle: 'Ajout API Muscles du corps / Ajout IA pour créer '
            'un menu diéthétique personalisé pour l\'utilisateur, Refaire UX/UI'),
        TilesWidget(title: 'Application Touristique', subtitle: 'Explication'),
        TilesWidget(title: 'Application co-voiturage surf sur Tahiti / avec API des vagues / API Météo', subtitle: 'Explication'),
      ],
    );
  }
}
