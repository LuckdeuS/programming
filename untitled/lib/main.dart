import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50.0,
            backgroundColor: Colors.white,
            backgroundImage:AssetImage("assents/images/wm1.jpg") //saca la imagen del archivo
            //NetworkImage("https://images.pexels.com/photos/354951/pexels-photo-354951.jpeg"),
            ),
            Text("Fiorella de Fátima Guadalupe", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w800, fontFamily: "Allura"),),
            Text("Flutter Developer",style: TextStyle(color: Colors.white30, fontSize: 18.0, fontWeight: FontWeight.w500,letterSpacing: 2.0),),
            Divider( thickness: 1.0,color: Colors.white24 , indent:120.0,endIndent: 120.0),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),elevation: 20.0,
              child:ListTile(
                title: Text("+51 983754654"), subtitle: Text("Telefono"), leading: Icon(Icons.phone, color: Colors.black,),trailing: Icon(Icons.check_circle_outline, color: Colors.black,),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0) ,elevation: 20.0,
              child:ListTile(
                title: Text("dsadasda@gmail.com"), subtitle: Text("Correo Electronico"), leading: Icon(Icons.email, color: Colors.black,),trailing: Icon(Icons.check_circle_outline, color: Colors.black,),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.facebook, color: Colors.white, size: 80.0, ),SizedBox( width: 10.0,height: 40.0, ),
                Icon(Icons.whatsapp ,color: Colors.white ,size: 80.0,),SizedBox(width: 10.0,height: 40.0,),
                Icon(Icons.email, color: Colors.white ,size: 80.0,),SizedBox(width: 10.0,height: 40.0,),],
            ),
          ],
        ),
      ),
    );
  }
}