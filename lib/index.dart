import 'package:flutter/material.dart';

class index extends StatefulWidget {
  const index({ Key? key }) : super(key: key);

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(

          child: Text('Hello Flutter',style: TextStyle(fontSize: 50,color: Colors.blue,fontWeight: FontWeight.w500,decoration: TextDecoration.none)),

      ),  
    );
  }
}