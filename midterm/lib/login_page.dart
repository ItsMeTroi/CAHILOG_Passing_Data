// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen2.dart';


class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}) : super(key: key);
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

late String value;

  @override
  Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green, Colors.yellow
                ],
              ),
            ),
  child:   Scaffold(
       backgroundColor: Colors.transparent,
    body: SafeArea(
  
      child: Center(
  
        child: SingleChildScrollView(
                  child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
               Image.asset(
                'assets/images/LogoJAG.png',
                height: 150,
                width: 150,
              ),
          // Jaguars Esports
  
            Text(
              'Jaguars Esports',
            style: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
            ),
            SizedBox(height: 20),
  
          // user.textfield
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
  
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: TextField(
                    onChanged: (text){
                      value = text;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Insert Any Text',
                      prefixIcon: Icon(Icons.people),
                    ),
                  ),
                ),
              ),
            ),
  
            SizedBox(height: 10),
  
          // sign-in button
  
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Screen2(value : value),
                  ));
                },
                    minWidth: double.infinity,
                    height: 60,
                    child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                    ),
  
                  child: Center(
                    child: Text('Switch',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    ),
  ),
);
}
}