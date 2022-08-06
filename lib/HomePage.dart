import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          actions: [Padding(padding: const EdgeInsets.all(8.0),
              child: GestureDetector(onTap: (){Navigator.pushNamed(context, '/mensagem');}, child: Icon(Icons.email)))],
        backgroundColor: Colors.indigo,
      ),
      drawer: Drawer(
          child: ListView(
          children: [
            DrawerHeader(child: Text('Fulano da Silva')),
            ListTile(
              title: Text('Central de Mensagens'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Política de Privacidade'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Termo de Responsabilidade'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Avaliar'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Preferências'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Tutorial'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Assistente Virtual'),
              onTap: (){},
            ),

          ],
        )

      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundColor: Colors.indigo, radius: 50, child: Text('F'), ),
            ),
            Text('Olá Fulano,', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, fontSize: 20),),
            Text('O que gostaria de fazer hoje?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){Alert(context: context, title: "Atenção", desc: "Em desenvolvimento").show();},
                  child: Column(
                    children: [
                      Image.asset('image/infracao.png',width: 100,),
                      Text('Infração', style: TextStyle(color: Colors.indigo))
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){Alert(context: context, title: "Atenção", desc: "Em desenvolvimento").show();},
                  child: Column(
                    children: [
                      Image.asset('image/educacao.png', width: 100,),
                      Text('Educação', style: TextStyle(color: Colors.indigo),)
                    ],
                  ),
                )

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){Alert(context: context, title: "Atenção", desc: "Em desenvolvimento").show();},
                  child: Column(
                    children: [
                      Image.asset('image/habilitacao.png', width:100,),
                      Text('Habilitação', style: TextStyle(color: Colors.indigo)),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){Alert(context: context, title: "Atenção", desc: "Em desenvolvimento").show();},
                  child: Column(
                    children: [
                      Image.asset('image/veiculos.png', width: 100,),
                      Text('Veículos', style: TextStyle(color: Colors.indigo)),
                    ],
                  ),
                )

              ],

            )
          ],
        ),
      ),
    );
  }
}
