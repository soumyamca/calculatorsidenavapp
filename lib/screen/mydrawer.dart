import 'package:calcsidenavapp/screen/add.dart';
import 'package:calcsidenavapp/screen/div.dart';
import 'package:calcsidenavapp/screen/mul.dart';
import 'package:calcsidenavapp/screen/sub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal
            ),
            currentAccountPicture:CircleAvatar(
              child: Text("C",style: TextStyle(fontSize: 20,color: Colors.white),),
              backgroundColor: Colors.black,
            ),




              accountName: Text("Calculator"), accountEmail: Text("calc@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Add()));
            },
            title: Text("Add"),
          ),
          ListTile(

          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Sub()));
          },
            title: Text("Sub"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Mul()));
            },
            title: Text("Mul"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Div()));
            },
            title: Text("Div"),
          ),
        ],
      ),
    );
  }
}
