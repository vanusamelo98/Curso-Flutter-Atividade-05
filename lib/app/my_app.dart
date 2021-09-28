
import 'package:agenda_crud/app/view/books_form.dart';
import 'package:agenda_crud/app/view/books_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const HOME='/'; 
  static const BOOKS_FORM= 'books-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
     routes:{
       HOME:(context)=>BooksList(),
       'books-form':(context)=>BooksForm()
     },
    );
  }
}