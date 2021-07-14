import 'package:apidisney/model/model_disney.dart';
import 'package:apidisney/provider/provider_disney.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  final _providerDisney = ProviderDisney();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PERSONAJES DE DISNEY!') ),
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_reaction),
            label: 'Reacction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_task),
            label: 'List',
          ),
        ],
      ),
      backgroundColor: Colors.blue[100], 
      body: FutureBuilder(
        future: _providerDisney.obtenerDisney(),
        builder: (BuildContext context, AsyncSnapshot<List<DisneyModel>> snapshot){
          final listdisney = snapshot.data;
          if(snapshot.hasData){
            return ListView.builder(
              itemCount:listdisney!.length, 
              itemBuilder: (BuildContext context, int i){
                final personaje = listdisney[i];
                return _Disenodisney(personaje);
              });
          }else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    ) ;
  }

}

class _Disenodisney extends StatelessWidget{
  final DisneyModel personaje;
  _Disenodisney(this.personaje);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>Navigator.pushNamed(context, '/detalles', arguments: personaje),
      title: Text(personaje.name!),
      //subtitle: Image.network(personaje.imageUrl!),
      trailing: Image.network(personaje.imageUrl!),
      leading: Icon(Icons.circle_sharp, color: Colors.blue),
    ) ;

  }
}