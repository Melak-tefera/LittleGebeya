
import 'package:flutter/material.dart';
import 'package:lilttlegebeya/components/buttons.dart';
import 'package:lilttlegebeya/pages/carts.dart';
import 'package:lilttlegebeya/pages/shoping.dart';


class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex=0;
  List pages=[
    Shoping(),
    Carts(),

  ];
  void itemselect(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              }, 
              icon: Icon(Icons.menu,color: Colors.black,));
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("lib/photos/logo11.jpg"),),
          ],
        ),
        
      ),
      body: pages[selectedindex],
      bottomNavigationBar: Mybuttons(onTabChange:itemselect),


    
    );
  }
}