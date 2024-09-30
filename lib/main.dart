import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appTitle: "Les wedgets Basiques" ));
}


//classe qui herite de stateless
class MyApp extends StatelessWidget {

  final String appTitle;
  //key = une cle qui referencie notre classe
  const MyApp({super.key, required this.appTitle});

  //
  //Construire le visuel de lapplication
  @override
  Widget build(BuildContext context) {
    //BuildContext il s'agit du context de creation de lapplication
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apprendre les widgets basiques',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // propriete de la classe Stateless
  final String title;

  const MyHomePage({super.key, required this.title});
 @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       title: Text(title),
       leading: const Icon(Icons.home),
       actions: [
         Icon(Icons.person),
         Icon(Icons.access_time)
       ],
       bottom: const PreferredSize(
           preferredSize: Size.fromHeight(24),
           child: Text('Salut les codeurs')),
       //backgroundColor: Colors.blue,
       elevation: 8,centerTitle: true,

     ),
     body: const FlutterLogo(size: 300),


   );
  }

}

