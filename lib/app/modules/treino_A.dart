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
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino A'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/treino_bg.jpg'),
                fit: BoxFit.cover)),
        child: Card(
          color: const Color.fromARGB(255, 33, 33, 33),
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          margin: const EdgeInsets.all(30),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView.builder(
              itemCount: treinos.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                        child: Theme(
                          data: ThemeData(
                              unselectedWidgetColor: Colors.red,
                              checkboxTheme: newCheckBoxTheme),
                          child: CheckboxListTile(
                            contentPadding: const EdgeInsets.all(1),
                            activeColor: const Color.fromARGB(255, 181, 11, 11),
                            checkColor: Colors.black,
                            title: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    treinos[index],
                                    style: _isChecked[index]
                                        ? const TextStyle(
                                            color:
                                                Color.fromARGB(255, 97, 97, 97))
                                        : const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                  ),
                                ),
                                Text(
                                  repeticoes[index],
                                  style: _isChecked[index]
                                      ? const TextStyle(
                                          color:
                                              Color.fromARGB(255, 97, 97, 97))
                                      : const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                ),
                              ],
                            ),
                            value: _isChecked[index],
                            onChanged: (val) {
                              setState(
                                () {
                                  _isChecked[index] = val!;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
