import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

int counter = 0;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Home Page'),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      )
    ),
    body: Center(
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(16.0), // Adiciona espaçamento interno
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Cor de fundo
            borderRadius: BorderRadius.circular(10.0), // Bordas arredondadas
          ),
          child: Text(
            'Contador: $counter',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Cor do texto
            ),
          ),
        ),
        onDoubleTap: () {
          setState(() {
            counter--;
          });
        },
      ),
    ),  
    floatingActionButton: Align(
      alignment: Alignment.bottomRight,
      child: Row(
        mainAxisSize: MainAxisSize.min, 
        children: [
          FloatingActionButton(
            heroTag: "btnAdicionar",
            child: Icon(Icons.add),
            onPressed: () { 
              setState(() {
                counter++;
              });
            }
          ),
          SizedBox(width: 20.0,),
          FloatingActionButton(
            heroTag: "btnRemover",
            child: Icon(Icons.remove),
            onPressed: () { 
              setState(() {
                counter--;
              });
            }
          )
        ]
      )
    ));
  }
}