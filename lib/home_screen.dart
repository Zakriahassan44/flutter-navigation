import 'package:flutter/material.dart';
import 'package:untitled/screen_three.dart';
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
        title: const Center(child: Text('Navigation driver')),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            //DrawerHeader(child: Text('Zakaria khan')),
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                ),
                accountName: Text('Zakaria khan'),
                accountEmail: Text('Zakria23@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Calculate'),
              onTap: (){
                Navigator.pushNamed(context, ScreenThree.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email_rounded),
              title: const Text('Message'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.media_bluetooth_off),
              title: const Text('Sounds'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Calculate'),
              onTap: (){
                Navigator.pushNamed(context, ScreenThree.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.cable),
              title: const Text('Communication'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Calendar'),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: (){},
            ),

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
              child: const Text('Screen 1'),
            ),
          )
        ],
      ),
    );
  }
}
