import 'package:flutter/material.dart';

class Treino extends StatelessWidget {
  const Treino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Treinos'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/hd-wallpaper-for-mobile-phones-picture-id1257005098?b=1&k=20&m=1257005098&s=170667a&w=0&h=je8sgDZ9o62xavDKDHVSaAE4M6wug7Yt5vOaPI0VHFo='),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(179, 255, 0, 0), width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              color: const Color(0x1FFFFFFF),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/treinoA');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                  child: Center(
                      child: Text(
                    'Treino A',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(179, 255, 0, 0), width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              color: const Color(0x1FFFFFFF),
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {Navigator.pushNamed(context, '/treinoB');},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                  child: Center(
                      child: Text(
                    'Treino B',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  )),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(179, 255, 0, 0), width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              color: const Color(0x1FFFFFFF),
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {Navigator.pushNamed(context, '/treinoC');},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 75),
                      child: Center(
                          child: Text(
                        'Treino C - aeróbico',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      )),
                    ),
                  ),
                  Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/hd-wallpaper-for-mobile-phones-picture-id1257005098?b=1&k=20&m=1257005098&s=170667a&w=0&h=je8sgDZ9o62xavDKDHVSaAE4M6wug7Yt5vOaPI0VHFo='),
                          fit: BoxFit.cover,
                        ),
                      ),
                      //I blured the parent container to blur background image, you can get rid of this part
                      child: Container()),
                ],
              ),
            ),
            // Stack(
            //   children: [
            //     Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //           image: NetworkImage(
            //               'https://media.istockphoto.com/photos/hd-wallpaper-for-mobile-phones-picture-id1257005098?b=1&k=20&m=1257005098&s=170667a&w=0&h=je8sgDZ9o62xavDKDHVSaAE4M6wug7Yt5vOaPI0VHFo='),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       //I blured the parent container to blur background image, you can get rid of this part
            //       child: BackdropFilter(
            //         filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            //         child: Container(
            //           //you can change opacity with color here(I used black) for background.
            //           decoration:
            //               BoxDecoration(color: Colors.black.withOpacity(0.2)),
            //         ),
            //       ),
            //     ),
            //     Card(
            //       color: Colors.transparent,
            //       elevation: 2,
            //       margin:
            //           const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //       child: InkWell(
            //         onTap: () {},
            //         child: const Padding(
            //           padding:
            //               EdgeInsets.symmetric(horizontal: 15, vertical: 75),
            //           child: Center(
            //               child: Text(
            //             'Treino C - aeróbico',
            //             style: TextStyle(fontSize: 22, color: Colors.white),
            //           )),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
