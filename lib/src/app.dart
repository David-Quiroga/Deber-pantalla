import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = "Ejemplo N.-01";
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;
    
    return MaterialApp(
      home: Scaffold(
              appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sitio para bodas',
          style: TextStyle(fontSize: 35.0, fontFamily: 'cursive', color: Colors.black),
          textAlign: TextAlign.start,
        ),
        backgroundColor: Colors.green,
      ),
        body: Container(
          width: 1670,
          height: 360,
          child: Image.asset(
            "images/wedding.jpg",
            fit: BoxFit.fill,
            filterQuality: FilterQuality.medium,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              activeIcon: const Icon(Icons.home),
              label: "Home",
              backgroundColor: colors.primary
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle, color: Colors.blue,),
              activeIcon: const Icon(Icons.person_outline),
              label: "Profile",
              backgroundColor: colors.primary
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag, color: Colors.blue),
              activeIcon: const Icon(Icons.shopping_bag_outlined),
              label: "Shop",
              backgroundColor: colors.secondary
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_month, color: Colors.blue),
              activeIcon: const Icon(Icons.calendar_month_outlined),
              label: "Calendar",
              backgroundColor: colors.primary
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.alarm_on, color: Colors.blue),
              activeIcon: const Icon(Icons.alarm),
              label: "About Me",
              backgroundColor: colors.primary
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
