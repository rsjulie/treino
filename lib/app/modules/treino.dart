import 'dart:ui';

import 'package:flutter/material.dart';

class Treino extends StatelessWidget {
  const Treino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/treino_bg.jpg'),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(39, 255, 255, 255),
                        border: Border.all(
                          color: const Color.fromARGB(175, 255, 0, 0),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/treinoA');
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                        child: Center(
                            child: Text(
                          'Treino A',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(39, 255, 255, 255),
                      border: Border.all(
                        color: const Color.fromARGB(175, 255, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/treinoB');
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                        child: Center(
                            child: Text(
                          'Treino B',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(39, 255, 255, 255),
                      border: Border.all(
                        color: const Color.fromARGB(175, 255, 0, 0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/treinoC');
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                        child: Center(
                            child: Text(
                          'Treino C - cardio',
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
