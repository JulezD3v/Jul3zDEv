import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 49, 51),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Happy Birthday Jul3z Dev 👽😎👽',
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '''
                    Happy Birthday Julez Dev, Here’s to more risks, 
                    more peace, and more moments that make you say, "I mean damn, I made it"
                    ''',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    const SizedBox(height: 20),
                    const Icon(Icons.favorite,
                        color: Color.fromARGB(255, 61, 104, 182), size: 40),
                    const Icon(Icons.favorite, color: Colors.black54),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

