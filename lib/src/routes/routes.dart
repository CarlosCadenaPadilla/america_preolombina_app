import 'package:america_precolombina_app/src/pages/aztecas/info_reto_azteca.dart';
import 'package:america_precolombina_app/src/pages/incas/info_reto_inca.dart';
import 'package:america_precolombina_app/src/pages/mayas/info_reto_maya.dart';
import 'package:flutter/material.dart';

//Propias
import 'package:america_precolombina_app/src/pages/mayas/pagina_mayas.dart';
import 'package:america_precolombina_app/src/pages/mayas/ubicacion_mayas.dart';
import 'package:america_precolombina_app/src/pages/mayas/mitologia_mayas.dart';
import 'package:america_precolombina_app/src/pages/mayas/estructura_mayas.dart';

import 'package:america_precolombina_app/src/pages/pagina_inicio.dart';
import 'package:america_precolombina_app/src/pages/incas/pagina_incas.dart';
import 'package:america_precolombina_app/src/pages/incas/ubicacion_incas.dart';
import 'package:america_precolombina_app/src/pages/incas/estructura_incas.dart';
import 'package:america_precolombina_app/src/pages/incas/mitologia_incas.dart';

import 'package:america_precolombina_app/src/pages/aztecas/pagina_aztecas.dart';
import 'package:america_precolombina_app/src/pages/aztecas/ubicacion_aztecas.dart';
import 'package:america_precolombina_app/src/pages/aztecas/estructura_aztecas.dart';
import 'package:america_precolombina_app/src/pages/aztecas/mitologia_aztecas.dart';
import 'package:america_precolombina_app/src/pages/aztecas/reto_aztecas.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'incas': (BuildContext context) => IncasPage(),
    'incasUbicacion': (BuildContext context) => IncasUbicacionPage(),
    'incasEstructura': (BuildContext context) => IncasEstructuraPage(),
    'incasMitologia': (BuildContext context) => IncasMitologiaPage(),
    'incasReto': (BuildContext context) => InfoIncaRetoPage(),
    'mayas': (BuildContext context) => MayasPage(),
    'mayasUbicacion': (BuildContext context) => MayasUbicacionPage(),
    'mayasEstructura': (BuildContext context) => MayasEstructuraPage(),
    'mayasMitologia': (BuildContext context) => MayasMitologiaPage(),
    'mayasReto': (BuildContext context) => InfoMayasRetoPage(),
    'aztecas': (BuildContext context) => AztecasPage(),
    'aztecasUbicacion': (BuildContext context) => AztecasUbicacionPage(),
    'aztecasEstructura': (BuildContext context) => AztecasEstructuraPage(),
    'aztecasMitologia': (BuildContext context) => AztecasMitologiaPage(),
    //'aztecasReto': (BuildContext context) => AztecasRetoPage(),
    'aztecasReto': (BuildContext context) => InfoAztecaRetoPage(),
  };
}
