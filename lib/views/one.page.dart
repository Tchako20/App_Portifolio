import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text('Skills'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pesquisa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'Ajuda',
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(alignment: Alignment.centerLeft),
                      Text('Nome: Thiago da silva saleth de paula',
                          style: TextStyle(fontSize: 15)),
                      Text('Nascimento: 23/02/2002',
                          style: TextStyle(fontSize: 15)),
                      Text('Nacionalidade: Belo Horizonte',
                          style: TextStyle(fontSize: 15)),
                      Text('Ensino: ADS', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Eu.jpg', width: 90),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                      child:
                          Text('Minhas skills', style: TextStyle(fontSize: 25)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('FrontAnd', style: TextStyle(fontSize: 23)),
                              Text('HTML', style: TextStyle(fontSize: 17)),
                              Text('CSS', style: TextStyle(fontSize: 17)),
                              Text('JavaScript',
                                  style: TextStyle(fontSize: 17)),
                              Text('BootStrap', style: TextStyle(fontSize: 17)),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'BackAnd',
                                style: TextStyle(fontSize: 23),
                              ),
                              Text(
                                'Java',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Dart',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Msql',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Flutter',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
