import 'package:app_portifolio/views/one.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       drawer: Builder(builder: (context) {
          return Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Thiago'),
                  accountEmail: Text('linkedin.com/in/thiago-saleth-a36351211'),
                  currentAccountPicture: Image.asset('assets/images/Eu.jpg'),
                  decoration: BoxDecoration(color:  Color.fromARGB(255, 6, 176, 94)),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.blueAccent),
                  title: Text('Sobre min', style: TextStyle(fontSize: 20)),
                  subtitle: Text('Conheça minha historia',
                      style: TextStyle(fontSize: 16)),
                  onTap: () {
                    //pop para fechar o menu
                    Navigator.of(context).pop();
                    //push para a homepage
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OnePage();
                    }));
                  },
                ),
                ListTile(
                  leading:
                      Icon(Icons.phone_paused_sharp, color: Colors.amberAccent),
                  title: Text('Skills', style: TextStyle(fontSize: 20)),
                  subtitle: Text('Conheça meus dominios',
                      style: TextStyle(fontSize: 16)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OnePage();
                    }));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.app_shortcut, color: Colors.black87),
                  title: Text('Trajetoria', style: TextStyle(fontSize: 20)),
                  subtitle: Text('Conheça meus projetos',
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          );
        }),
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Center(child: Text('HomePage')),
          ),
        ),
      ),
    );
  }
}
