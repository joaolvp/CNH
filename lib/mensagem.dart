import 'package:flutter/material.dart';

class Mensagem extends StatefulWidget {
  const Mensagem({Key? key}) : super(key: key);

  @override
  State<Mensagem> createState() => _MensagemState();
}

class _MensagemState extends State<Mensagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Central de Mensagens'),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
