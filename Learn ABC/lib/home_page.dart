import 'package:flutter/material.dart';
import 'package:flutter_application_2/color_screen.dart';
import 'package:flutter_application_2/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learn Letters",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: colorsList
              .map(
                (colorItem) => InkWell(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorScreen(
                          colorItem.c,
                          colorItem.alpha,
                        ),
                      ),
                    )
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: colorItem.c,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(7, 7),
                          color: Colors.grey,
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        colorItem.alpha,
                        style: const TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
