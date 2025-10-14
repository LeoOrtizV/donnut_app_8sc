import 'package:donnut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),
    const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancakes'),
    const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //Icono de la izquierda
          leading: Icon(
            Icons.menu,
            color: Colors.grey[500],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            //1. Texto principal
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to ', 
                  style:TextStyle(fontSize: 24),
                  ),
                  
                  Text('eat', style:TextStyle(
                    fontSize: 24,
                    //Negritas
                    fontWeight: FontWeight.bold,
                    //Subrayado
                    decoration: TextDecoration.underline)
                    ),
                ],
              ),
            ),
      
            //2. Pestañas (TabBar)
            TabBar(tabs:  myTabs)
      
            //3. Contenido de pestañas (TabBarView)
      
            //4. Carrito (Cart)
          ],
        ),
      ),
    );
  }
}

