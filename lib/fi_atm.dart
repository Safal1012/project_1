import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(MaterialApp(
    home: FiCard(),
  ));
}

class FiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.teal),
            ),
            Positioned(
              top: 80,
              left: 30,
              child: Row(
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(
                      Icons.sim_card_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Icon(
                      Icons.wifi,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              left: 30,
              child: Text(
                "Safal K S",
                style: GoogleFonts.aBeeZee(fontSize: 16, color: Colors.white70),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                "VISA",
                style: GoogleFonts.aBeeZee(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 20,
              right: 40,
              child: GradientText(
                "FI",
                style: GoogleFonts.fahkwang(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                colors: [Colors.black12, Colors.white, Colors.white70],
                stops: [0, .3, 1],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
