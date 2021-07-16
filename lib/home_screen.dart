import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_recipe/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> names = <String>[
  'All',
  'Sushi',
  'Burger',
  'Pizza',
];
final List<int> checkColor = <int>[10, 2, 4, 6];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
                child: TextField(
                  textAlign: TextAlign.center,
                  minLines: 1,
                  maxLines: 1,
                  autocorrect: false,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 60,
                      width: 60,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Color(0xfffe0e0e0),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset:
                                Offset(0.0, 0.0 // Move to bottom 10 Vertically
                                    ),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Icon(
                        Icons.travel_explore,
                        color: Colors.green[400],
                      ),
                    ),
                    hintText: 'Search Your Recipe',
                    hintStyle: GoogleFonts.comfortaa(
                        color: Colors.grey[500],
                        fontSize: 14.6,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Color(0xffff5f5f5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xfffe8f5e9)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 10, bottom: 10),
                          child: Container(
                            height: 15,
                            width: 100,
                            decoration: new BoxDecoration(
                              color: checkColor[index] >= 10
                                  ? Colors.green[400]
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                  bottomLeft: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0)),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: checkColor[index] >= 10
                                      ? Colors.green
                                      : Color(0xfffe0e0e0),
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
                              child: Text('${names[index]}',
                                  style: GoogleFonts.comfortaa(
                                      color: checkColor[index] >= 10
                                          ? Colors.white
                                          : Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        );
                      }),
                )),
            Container(
              margin: const EdgeInsets.all(28.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Color(0xfffe0e0e0),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(0.0, 0.0 // Move to bottom 10 Vertically
                        ),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80',
                    width: 400),
              ),
            ),
            Center(
              child: Text('Egg Toast & Beans',
                  style: GoogleFonts.cinzel(
                      color: Colors.black87,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),
            Center(
              child: Text('12 Ingredients | 40 Minutes',
                  style: GoogleFonts.comfortaa(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Recpie()));
              },
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('View Recipe',
                        style: GoogleFonts.allura(
                            color: Colors.black87,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
