import 'package:cnhdigital/HomePage.dart';
import 'package:flutter/material.dart';

import 'mensagem.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      '/': (_) => HomePage(),
      '/mensagem':(_) => Mensagem(),
    },
  ));
}