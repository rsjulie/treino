import 'package:flutter/material.dart';

class Treino extends StatelessWidget {
  const Treino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: const Text('Treino'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            elevation: 2,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/treinoA');
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Center(
                    child: Text(
                  'treino A',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
              ),
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Center(
                    child: Text(
                  'Treino B',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
              ),
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Center(
                    child: Text(
                  'Treino C - aeróbico',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
