import 'package:flutter/material.dart';
import 'package:flutter_recipe/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        //in the stack, the background is first. using fit:BoxFit.cover will cover
        //the parent container. Use double.infinity for height and width
        FadeInImage(
          placeholder: AssetImage("assets/back.jpg"),
          image: AssetImage("assets/back.jpg"),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          //if you use a larger image, you can set where in the image you like most
          //width alignment.centerRight, bottomCenter, topRight, etc...
          alignment: Alignment.center,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 120,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 38.0, left: 100, right: 90),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                opacity: 0.86,
                child: Container(
                    decoration: new BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(95.0),
                          topRight: Radius.circular(95.0),
                          bottomLeft: Radius.circular(95.0),
                          bottomRight: Radius.circular(95.0)),
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 7.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset:
                              Offset(0.0, 0.0 // Move to bottom 10 Vertically
                                  ),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                        top: 7, bottom: 7, left: 8, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(95.0),
                                topRight: Radius.circular(95.0),
                                bottomLeft: Radius.circular(95.0),
                                bottomRight: Radius.circular(95.0)),
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: Offset(
                                    0.0, 0.0 // Move to bottom 10 Vertically
                                    ),
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Get Started',
                            style: GoogleFonts.allura(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
