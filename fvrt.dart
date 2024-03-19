import 'package:flutter/material.dart';
import 'package:fyp_pro/screen/home.dart';

class fvrt extends StatefulWidget {
  const fvrt({super.key});

  @override
  State<fvrt> createState() => _fvrtState();
}

class _fvrtState extends State<fvrt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.purple,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        },
      ),
      title: Center(
          child: Text('Favorite ',
            style: TextStyle(color: Colors.white),)),),);
  }
}
