import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite/helpers/dbhelper.dart';
import 'package:sqlite/models/contact.dart';
import 'package:sqlite/ui/entryform.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite'),
      ),
      body: createListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Tambah Data',
        onPressed: () async {
          await navigateToEntryForm(context);          
        },
      ),
    );
  }

  navigateToEntryForm(BuildContext context) async {
    var result = await Navigator.push(
      context, 
      MaterialPageRoute(builder: (BuildContext context){ return EntryForm(); })
      );
    return result;
  }

  ListView createListView(){
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.people),
            ),
          title: Text('Nama'),
          subtitle: Text('123456'),
          trailing: GestureDetector(
            child: Icon(Icons.delete),
            onTap: () {
              
            },
          ),
          onTap: () async {            
            
          },
          ),      
        );
      },
    );
  }
}