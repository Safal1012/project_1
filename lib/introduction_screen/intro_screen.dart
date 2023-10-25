import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_1/Stateful_Splash.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreenn(),
  ));
}

class IntroScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration decorationPage = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      bodyTextStyle: TextStyle(
          fontSize: 20, fontStyle: FontStyle.italic, color: Colors.blue),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Colors.yellow, Colors.orangeAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
          title: 'Hello First Page',
          body:
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: IntroImage(
              "https://png.pngtree.com/element_our/png/20181229/writing-learners-png_300955.jpg"),
        ),
        PageViewModel(
          decoration: decorationPage,
          title: 'Hello Second Page',
          body:
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: IntroImage(
              "https://img.lovepik.com/element/45001/7838.png_860.png"),
        ),
        PageViewModel(
          decoration: decorationPage,
          title: 'Hello Third Page',
          body:
              "Introduction/Onboarding package for flutter app with some customizations possibilities",
          image: IntroImage(
              "https://png.pngitem.com/pimgs/s/241-2417799_what-we-offer-png-study-transparent-png.png"),
        )
      ],
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash2())),
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash2())),
      showSkipButton: true,
      skip: Text('Skip'),
      showBackButton: false,
      back: Text('Back'),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text('Done'),
      dotsDecorator: DotsDecorator(
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          size: Size(12, 10),
          activeSize: Size(22, 10),
          activeColor: Colors.red),
    );
  }

  Widget IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imgpath)),
        ),
      ),
    );
  }
}
