import 'package:flutter/material.dart';
import 'package:untitled/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigtion driver')),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
              child: Text('Screen 1'),
            ),
          )
        ],
      ),
    );
  }
}
