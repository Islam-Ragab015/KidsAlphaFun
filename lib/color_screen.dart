import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  final Color backgroundColor;
  final String letter;
  ColorScreen(this.backgroundColor, this.letter, {super.key});

  final Map<String, Map<String, String>> letterData = {
    'A': {
      'image': 'assets/images/apple.png',
      'description': 'Apple is a delicious fruit rich in nutrients.',
    },
    'B': {
      'image': 'assets/images/ball.png',
      'description': 'Ball is a round object used in various games.',
    },
    'C': {
      'image': 'assets/images/cat.png',
      'description': 'Cat is a small domesticated animal.',
    },
    'D': {
      'image': 'assets/images/dog.png',
      'description': 'Dog is a domesticated descendant of the wolf.',
    },
    'E': {
      'image': 'assets/images/elephant.png',
      'description': 'Elephant is the largest land animal.',
    },
    'F': {
      'image': 'assets/images/fish.png',
      'description': 'Fish is a widely distributed fresh-water species.',
    },
    'G': {
      'image': 'assets/images/giraffe.png',
      'description': 'Giraffe is the tallest living terrestrial animal.',
    },
    'H': {
      'image': 'assets/images/horse.png',
      'description': 'Horse is a large domesticated mammal.',
    },
    'I': {
      'image': 'assets/images/iguana.png',
      'description': 'Iguana is a reptile with a long neck.',
    },
    'J': {
      'image': 'assets/images/jaguar.png',
      'description': 'Jaguar is the largest cat in the world.',
    },
    'K': {
      'image': 'assets/images/koala.png',
      'description': 'Koala is a marsupial native to Australia.',
    },
    'L': {
      'image': 'assets/images/lion.png',
      'description': 'Lion is the largest land animal.',
    },
    'M': {
      'image': 'assets/images/mouse.png',
      'description': 'Mouse is a mammal with a long and thin tail.',
    },
    'N': {
      'image': 'assets/images/narwhal.png',
      'description': 'Narwhal is a toothed whale with a large bill.',
    },
    'O': {
      'image': 'assets/images/octopus.png',
      'description': 'Octopus is a cephalopod.',
    },
    'P': {
      'image': 'assets/images/panda.png',
      'description': 'Panda is an arboreal domesticated mammal.',
    },
    'Q': {
      'image': 'assets/images/quetzal.png',
      'description': 'Quetzal is a small mammal with a long tail.',
    },
    'R': {
      'image': 'assets/images/rabbit.png',
      'description': 'Rat is a rodent with a long snout.',
    },
    'S': {
      'image': 'assets/images/snake.png',
      'description': 'Snake is a reptile with a long and thin body.',
    },
    'T': {
      'image': 'assets/images/tiger.png',
      'description': 'Tiger is the largest cat in the world.',
    },
    'U': {
      'image': 'assets/images/unicorn.png',
      'description': 'Unicorn is a magical animal with a horn.',
    },
    'V': {
      'image': 'assets/images/volcano.png',
      'description': 'Volcano is a large land mass.',
    },
    'W': {
      'image': 'assets/images/wolf.png',
      'description': 'Wolf is a large canine domesticated mammal.',
    },
    'X': {
      'image': 'assets/images/xray.png',
      'description': 'X-ray is a medical imaging technique.',
    },
    'Y': {
      'image': 'assets/images/yak.png',
      'description': 'Yak is a large domesticated mammal.',
    },
    'Z': {
      'image': 'assets/images/zoo.png',
      'description': 'Zoo is a large collection of animals.',
    },
  };

  @override
  Widget build(BuildContext context) {
    final data = letterData[letter] ??
        {
          'image': 'assets/default.png',
          'description': 'No data available',
        };

    return Scaffold(
      appBar: AppBar(
        title: Text('Letter $letter'),
        backgroundColor: backgroundColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(data['image']!, height: 200.0),
            const SizedBox(height: 20.0),
            Text(
              data['description']!,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
