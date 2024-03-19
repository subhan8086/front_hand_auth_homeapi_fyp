import 'package:flutter/material.dart';
import 'package:fyp_pro/screen/home.dart';
import 'package:google_fonts/google_fonts.dart';
class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {

  String category = 'General';
  List<String> caterogiesList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology',

    //'siraj',
    //'uzair'

  //  'trending'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
          },
        ),
        title: Center(child: Text(
          'Category',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body:

      Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(

          children: [
            SizedBox(

              height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: caterogiesList.length,
                itemBuilder: (context,index){
               return

                 InkWell(
                   onTap: (){
                     category=caterogiesList[index];
                     setState(() {

                     });
                   },
                   child: Padding(
                   padding: const EdgeInsets.only(right: 20),


                   child: Container(
                     height: 10,
                     decoration: BoxDecoration(
                       color: category==caterogiesList[index] ? Colors.purple:Colors.black38,
                       borderRadius: BorderRadius.circular(20)

                     ),
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 12),//120
                       child: Center(

                           child: Text(caterogiesList[index].toString(),
                             style: GoogleFonts.poppins(fontSize: 13,
                             color: Colors.white),
                           )
                       ),
                     ),),
                                ),
                 );
            },

                ),
            ),


          ],),
      ),

    );
  }
}
