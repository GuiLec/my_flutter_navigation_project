import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/modules/family/interface.dart';

List<FamilyData> family = [
  FamilyData('Mamoune', AssetImage('lib/assets/images/mamoune.png')),
  FamilyData(
      'Grands Bonnet ("Yéyé")',
      AssetImage('lib/assets/images/gd_bonnet.png'),
      [olivier, anne, jeremie, charlotte, claire, laure]),
  FamilyData('Lecallier', AssetImage('lib/assets/images/lecallier.jpeg'), [
    thierry,
    marieAntoinette,
    cyprien,
    guillaume,
    tristan,
    thibaut,
    josephine
  ]),
  FamilyData('Hélène', AssetImage('lib/assets/images/helene.jpg')),
  FamilyData('Réquillart', AssetImage('lib/assets/images/requillart.png'),
      [philippe, delphine, joseph, louis, margueritte, theodore]),
  FamilyData(
      'Petits Bonnet ("Riri")',
      AssetImage('lib/assets/images/pti_bonnet.png'),
      [henri, annaig, pierre, marie, baptiste, clemence]),
];

FamilyMember jeremie =
    FamilyMember('Jérémie', AssetImage('lib/assets/images/jeremie.png'));
FamilyMember charlotte =
    FamilyMember('Charlotte', AssetImage('lib/assets/images/charlotte.png'));
FamilyMember claire =
    FamilyMember('Claire', AssetImage('lib/assets/images/claire.png'));
FamilyMember laure =
    FamilyMember('Laure', AssetImage('lib/assets/images/laure.png'));
FamilyMember cyprien =
    FamilyMember('Cyprien', AssetImage('lib/assets/images/cyprien.png'));
FamilyMember guillaume =
    FamilyMember('Guillaume', AssetImage('lib/assets/images/guillaume.png'));
FamilyMember tristan =
    FamilyMember('Tristan', AssetImage('lib/assets/images/tristan.png'));
FamilyMember thibaut =
    FamilyMember('Thibaut', AssetImage('lib/assets/images/thibaut.png'));
FamilyMember josephine =
    FamilyMember('Joséphine', AssetImage('lib/assets/images/josephine.png'));
FamilyMember joseph =
    FamilyMember('Joseph', AssetImage('lib/assets/images/joseph.png'));
FamilyMember louis =
    FamilyMember('Louis', AssetImage('lib/assets/images/louis.png'));
FamilyMember pierre =
    FamilyMember('Pierre', AssetImage('lib/assets/images/pierre.png'));
FamilyMember theodore =
    FamilyMember('Théodore', AssetImage('lib/assets/images/theodore.png'));
FamilyMember margueritte = FamilyMember(
    'Margueritte', AssetImage('lib/assets/images/margueritte.png'));
FamilyMember baptiste =
    FamilyMember('Baptiste', AssetImage('lib/assets/images/baptiste.png'));
FamilyMember marie =
    FamilyMember('Marie', AssetImage('lib/assets/images/marie.png'));
FamilyMember clemence =
    FamilyMember('Clémence', AssetImage('lib/assets/images/clemence.png'));
FamilyMember thierry =
    FamilyMember('Thierry', AssetImage('lib/assets/images/thierry.png'));
FamilyMember marieAntoinette = FamilyMember(
    'Marie-Antoinette', AssetImage('lib/assets/images/marie_antoinette.png'));
FamilyMember henri =
    FamilyMember('Henri', AssetImage('lib/assets/images/henri.png'));
FamilyMember annaig =
    FamilyMember('Annaïg', AssetImage('lib/assets/images/annaig.png'));
FamilyMember philippe =
    FamilyMember('Philipppe', AssetImage('lib/assets/images/philippe.png'));
FamilyMember delphine =
    FamilyMember('Delphine', AssetImage('lib/assets/images/delphine.png'));
FamilyMember anne =
    FamilyMember('Anne', AssetImage('lib/assets/images/anne.png'));
FamilyMember olivier =
    FamilyMember('Olivier', AssetImage('lib/assets/images/olivier.png'));
