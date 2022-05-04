import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Treino extends StatelessWidget {
  const Treino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: const Text('Treino'), 
        centerTitle: true,
      ), 
      body: ListView(
        children:  [
           SizedBox(height: 15),

           Card(
             elevation: 2,
             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
             child: InkWell(
               onTap: (){},
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 child: Center(child: Text('Treino 1', style: TextStyle(fontSize: 22, ),)),
               ),
             ),
           ),
           Card(
             elevation: 2,
             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
             child: InkWell(
               onTap: (){},
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 child: Center(child: Text('Treino 2', style: TextStyle(fontSize: 22, ),)),
               ),
             ),
           ),
           Card(
             elevation: 2,
             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
             child: InkWell(
               onTap: (){},
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 child: Center(child: Text('Treino 3 - aeróbico', style: TextStyle(fontSize: 22, ),)),
               ),
             ),
           ),
        ],
      ),
    );
  }
  
}