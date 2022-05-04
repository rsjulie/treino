import 'dart:developer';

import 'package:flutter/material.dart';

class TreinoA extends StatefulWidget {
  const TreinoA({Key? key}) : super(key: key);

  @override
  State<TreinoA> createState() => _TreinoAState();
}

class _TreinoAState extends State<TreinoA> {
  @override
  Widget build(BuildContext context) {
    bool checkedValue = false;

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
                itemCount: 7,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      "title text",
                      style: checkedValue
                          ? const TextStyle(
                              color: Color.fromARGB(255, 212, 212, 212))
                          : const TextStyle(),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = !checkedValue;
                        log(checkedValue.toString());
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  );
                }),
          ),
        ));
  }
}
