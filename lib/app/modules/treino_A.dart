import 'package:flutter/material.dart';

class TreinoA extends StatefulWidget {
  const TreinoA({Key? key}) : super(key: key);
  @override
  State<TreinoA> createState() => _TreinoAState();
}

class _TreinoAState extends State<TreinoA> {
  List<String> treinos = [
    'Cardio',
    'Cadeira Extensora 07',
    'Supino Vertical 02',
    'Cadeira Adutora 09',
    'Triceps Máquina 11',
    'Leg Horizontal 17',
    'Triceps Corda Cross',
    'Abdominal Maq 14',
    'Cardio',
  ];
  List<String> repeticoes = [
    '10min',
    '3x15',
    '3x15',
    '3x15',
    '3x15',
    '3x15',
    '3x15',
    '3x15',
    '15min',
  ];
  List<bool> _isChecked = [];
  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(treinos.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Treino A'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/treino_bg.jpg'),
                  fit: BoxFit.cover)),
          child: Card(
            color: const Color.fromARGB(255, 33, 33, 33),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.builder(
                  itemCount: treinos.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            activeColor: Colors.blue,
                            title: Text(
                              treinos[index],
                              style: _isChecked[index]
                                  ? const TextStyle(
                                      color: Color.fromARGB(255, 97, 97, 97))
                                  : const TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                            ),
                            value: _isChecked[index],

                            onChanged: (val) {
                              setState(
                                () {
                                  _isChecked[index] = val!;
                                },
                              );
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                        ),
                        Text(repeticoes[index]),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ));
  }
}
