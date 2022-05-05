import 'dart:developer';
import 'package:flutter/material.dart';

class TreinoA extends StatefulWidget {
  const TreinoA({Key? key}) : super(key: key);
  @override
  State<TreinoA> createState() => _TreinoAState();
}



class _TreinoAState extends State<TreinoA> {
  List<String> treinos = [
  'Esteira',
  'Bicicleta'
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
          title: const Text('treino A'),
        ),
        body: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
              },);},
                          controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                        ),
                      ),
                      Text('sdasdas'),
                      SizedBox(width: 20,),
                    ],
                  );
                }),
          ),
        ));
  }
}
