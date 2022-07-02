
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/const.dart';
import 'package:real_utopiaa/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 @override
  
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>onboarding(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ksecondaryColor,
      body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(
           child: Container(
           padding: EdgeInsets.only(top: 90, bottom: 10),
              height: 400,
              width: 400,
              child: Image.asset('assets/spl.png'),
            ),
         ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
            Text('Real',style:GoogleFonts.poppins(fontSize: 30,color:Colors.white)),
            Text('Utopia',style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),),
          ],),
          SizedBox(

            height: 200,

          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(right: 50)),
               Padding(padding: EdgeInsets.only(left: 50,right: 20,),child: GestureDetector(child: Icon(Icons.arrow_circle_right_rounded,color: Colors.white,size: 45,),),),
            ],
          )
        ],
      ),
      ),
    );
  }
}