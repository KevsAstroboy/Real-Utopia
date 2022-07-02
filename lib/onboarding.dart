import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/HomePage.dart';
import 'package:real_utopiaa/const.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10,),
                  height: 212,
                  width: 294,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset('assets/row.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'RealUtopia est une application de réalité augmentée immobilière simple et facile à utiliser pour les architectes et leurs clients',
                style: GoogleFonts.poppins(
                fontSize: 20,
                color: ksecondaryColor,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   GestureDetector(
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(14), color: ksecondaryColor,),
                      child: Text(
                        'Skip',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            
                            color: Colors.white),
                      ),
                      padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                      margin: EdgeInsets.only(right: 10,left: 10,bottom: 2),
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    
                  ),
                  GestureDetector(
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(14), color: ksecondaryColor,),
                      child: Text(
                        'Next',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                           
                            color: Colors.white),
                      ),
                      padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                       margin: EdgeInsets.only(right: 10,top:300,left: 10,bottom: 2),
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) =>HomePage()));
                    },
                    
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
