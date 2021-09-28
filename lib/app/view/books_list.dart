import 'package:agenda_crud/app/database/sqlite/connection.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../my_app.dart';

class BooksList extends StatelessWidget {

Future<List<Map<String,dynamic>>>_buscar()async{
    Database db = await Connection.get();
    return db.query('book');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:_buscar(),
      builder: (context,futuro){
        if(futuro.hasData){
          var lista = futuro.data;
          return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Livros'),
        actions:[
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
              Navigator.of(context).pushNamed(MyApp.BOOKS_FORM);
            }
          )
        ]
      ),
      body:ListView.builder(
        itemCount:lista!.length,
        itemBuilder:(context,i){
          var livro = lista[i]!;
          var capa = CircleAvatar(backgroundImage: NetworkImage(livro['url_capa']!),);
          return ListTile(
            leading: capa,
            title: Text(livro['título']!),
            subtitle: Text(livro['ISBN']!),
            trailing: Container(
              width: 100,
              child: Row(
                children:[
                  IconButton(icon:Icon(Icons.edit),onPressed:null),
                  IconButton(icon:Icon(Icons.delete),onPressed:null),
                ],
              ),
              ),

          );
        },
      )
    );

        }else{
          return Scaffold();


        }
      }
      );
    
  }

}

mixin Connection {
  static get() {}
}

class Database {
}

