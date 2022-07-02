import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_utopiaa/ArchitectCatalog.dart';
import 'package:real_utopiaa/UserCatalog.dart';
import 'package:real_utopiaa/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ksecondaryColor,
              Color.fromARGB(255, 55, 159, 243),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            height: 350,
            width: 350,
            child: Image.asset('assets/pice.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to ', style: GoogleFonts.poppins(fontSize: 25)),
              Text('Real',
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text(
                'Utopia',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  height: 34,
                  width: 139,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Text(
                    'USER',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 55, 159, 243)),
                  ),
                  padding: EdgeInsets.only(left: 40, right: 25, top: 4),
                  margin: EdgeInsets.only(right: 10, top: 205),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => UserCatalog()));
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Text(
                    'ARCHITECT',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 55, 159, 243)),
                  ),
                  padding: EdgeInsets.only(left: 40, right: 25, top: 5),
                  margin: EdgeInsets.only(right: 10, top: 205),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ArchitectCatalog()));
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
