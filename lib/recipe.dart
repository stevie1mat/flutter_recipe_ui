import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> name = <String>[
  'Matcha',
  'Rice Bowl',
  'Salmon',
];
final List<String> servings = <String>[
  '1gm in fresh water',
  '3cups of white rice',
  '2 pieces on top',
];
final List<String> img = <String>[
  'https://upload.wikimedia.org/wikipedia/commons/d/d9/Matcha_Scoop.jpg',
  'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/h7fd82gpnemzzhjvfvub',
  'https://images.thefishsite.com/fish%2Farticles%2Fprocessing%2Fsalmon-fillet.jpeg?scale.option=fill&scale.width=1200&scale.height=630&crop.width=1200&crop.height=630&crop.y=center&crop.x=center'
];

final List<String> quantity = <String>['1 Tbs', '200gm', '500gm'];

class Recpie extends StatelessWidget {
  const Recpie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.bookmark_add_outlined,
              color: Colors.grey,
            ),
          ),
        ],
        leading: Icon(
          Icons.arrow_left_sharp,
          color: Colors.grey,
        ),
        title: Text('Full Recipe',
            style: GoogleFonts.comfortaa(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Color(0xfffe0e0e0),
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset:
                              Offset(0.0, 0.0 // Move to bottom 10 Vertically
                                  ),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                              'https://images.unsplash.com/reserve/EnF7DhHROS8OMEp2pCkx_Dufer%20food%20overhead%20hig%20res.jpg?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1057&q=80'),
                          Container(
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0)),
                                boxShadow: [
                                  //background color of box
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 1.0, //extend the shadow
                                    offset: Offset(
                                        0.0, 0.0 // Move to bottom 10 Vertically
                                        ),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(Icons.play_arrow),
                              )),
                        ],
                      ),
                    ))),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text('Ingredients (12)',
                    style: GoogleFonts.abhayaLibre(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 18, right: 5, top: 5, bottom: 5),
                    decoration: new BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 6.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset:
                              Offset(0.0, 0.0 // Move to bottom 10 Vertically
                                  ),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Text('1 Serving',
                            style: GoogleFonts.cinzel(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_drop_down, color: Colors.white)
                      ],
                    )),
              ),
            ]),
            Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 600,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),
                      itemCount: name.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 20, bottom: 10),
                          child: Container(
                            height: 85,
                            width: 100,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0)),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Color(0xfffe0e0e0),
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 1.0, //extend the shadow
                                  offset: Offset(
                                      0.0, 0.0 // Move to bottom 10 Vertically
                                      ),
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(0),
                            child: Center(
                              child: ListTile(
                                leading: Image.network(
                                  '${img[index]}',
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                                title: Text('${name[index]}',
                                    style: GoogleFonts.aleo(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal)),
                                subtitle: Text('${servings[index]}'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                          ),
                        );
                      }),
                )),
          ],
        ),
      ),
    );
  }
}
