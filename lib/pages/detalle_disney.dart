import 'package:apidisney/model/model_disney.dart';
import 'package:flutter/material.dart';

class DetalleDisney extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    DisneyModel personaje = ModalRoute.of(context)!.settings.arguments as DisneyModel;
    return Scaffold(
      appBar: AppBar( 
        title: Text(personaje.name!),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: 'Personaje',
          ),
        ],
      ),
      backgroundColor: Colors.blue[100],
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //),
          Text(personaje.name!,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color:Colors.black)
              ),
          SizedBox(
            child: Image.network(personaje.imageUrl!),
          )

        ],

      ),

    );

  }
}