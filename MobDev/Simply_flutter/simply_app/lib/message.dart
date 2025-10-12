import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 167, 204, 211),
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
                    const Text(
                      '''
✨Happy Birthday, Legend✨

Today isn’t just another day — it’s your reminder that you’ve made it 
through storms others wouldn’t survive. You’ve grown, evolved, and 
still kept your edge. That’s rare.

Forget playing small. This year, it’s about moving with quiet confidence — 
chasing goals without announcing every move. Let your success make the noise.

May your energy stay protected, your circle stay clean, and your focus stay locked in.
May every lesson from the past year turn into fuel for what’s coming next.

You deserve peace that feels like freedom, love that doesn’t drain you, and wins that 
remind you who the hell you are.

So celebrate hard. Laugh louder. Live sharper. You’re not getting older — you’re getting
realer.
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
