import 'package:flutter/material.dart';
import 'package:lilttlegebeya/pages/home_page.dart';

class IntroPage extends StatelessWidget {
const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                //logo
                child: Image.asset("lib/photos/nikelogo.png", height: 240, ),
              ),
              SizedBox(height: 48,),
              //title
              Text("LittleGebeya",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 20,),
              Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 48,),
              //button for home page
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(25),
                  child:Center(child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),)),
                ),
              )

          
          
          
          
          
              
          
          
            ],
          ),
        ),
      ),
      
    );
  }
}