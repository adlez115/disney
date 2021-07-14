import 'package:apidisney/pages/detalle_disney.dart';
import 'package:apidisney/pages/home_page.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App DISNEY',
      initialRoute: '/home',
      routes: {
        '/home':(_)=>HomePage(),
        '/detalles':(_)=>DetalleDisney(),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
)
    );
  }
}