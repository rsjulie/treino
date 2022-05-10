import 'package:flutter/material.dart';

class TreinoC extends StatefulWidget {
  const TreinoC({Key? key}) : super(key: key);
  @override
  State<TreinoC> createState() => _TreinoCState();
}

class _TreinoCState extends State<TreinoC> {
  List<String> treinos = [
    'Esteira inclinada a 10%',
    'Abdominal Infra',
    'Escada',
    'Abdominal supra bola suiça',
    'Bike vertical',
    'Abdominal Prancha Isométrica',
    'Elíptico',
  ];
  List<String> repeticoes = [
    '10min',
    '3x15',
    '10min',
    '3x15',
    '10min',
    '3x40seg',
    '10min',
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
          title: const Text('Treino C'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/hd-wallpaper-for-mobile-phones-picture-id1257005098?b=1&k=20&m=1257005098&s=170667a&w=0&h=je8sgDZ9o62xavDKDHVSaAE4M6wug7Yt5vOaPI0VHFo='),
                fit: BoxFit.cover)),
          child: Card(
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
                            contentPadding: const EdgeInsets.only(left: 10),
                            title: Text(
                              treinos[index],
                              style: _isChecked[index]
                                  ? const TextStyle(
                                      color: Color.fromARGB(255, 212, 212, 212))
                                  : const TextStyle(),
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
                        Text(repeticoes[index], style: _isChecked[index]
                                  ? const TextStyle(
                                      color: Color.fromARGB(255, 212, 212, 212))
                                  : const TextStyle(),),
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
