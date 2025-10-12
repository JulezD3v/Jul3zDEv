import 'package:flutter/material.dart';
import 'package:simply_app/message.dart';
import 'package:simply_app/front.dart';

void main() {
  runApp( BirthdayApp());
}

class BirthdayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Birthday Wish App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Birthday Wish App'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 125, 145),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.message), text: 'Wish Icons'),
            Tab(icon: Icon(Icons.card_giftcard), text: 'Your Message'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children:[
                FrontPage(),
                MessagePage(),
              ],
            ),
          ),
          // Icons always visible at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.celebration, color: Colors.blue, size: 30),
                  Icon(Icons.star, color: Colors.orange, size: 30),
                  Icon(Icons.auto_awesome, color: Colors.green, size: 30),
                  Icon(Icons.card_giftcard, color: Colors.red, size: 30),
                  Icon(Icons.favorite, color: Colors.pink, size: 30),
                  Icon(Icons.cake, color: Colors.brown, size: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


