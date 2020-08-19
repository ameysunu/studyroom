import 'package:flutter/material.dart';
import 'home.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionPage(),
    );
  }
}

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle =
        TextStyle(fontSize: 19.0, fontFamily: 'Poppins', color: Colors.white);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'Poppins',
          color: Colors.white),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.black,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Welcome to StudyRoom.",
          body: "Easy, seamless classroom experience",
          image: _buildImage('gen1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Join meetings easily",
          body: "Just select your seat and get into the meeting.",
          image: _buildImage('gen1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Present as you go",
          body:
              "Present meetings, and choose your on meeting ID and pass it to only those, who you want to join.",
          image: _buildImage('genz'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Security Redefined",
          body:
              "With Agora's secure camera SDK, you are safe and in right hands.",
          image: _buildImage('gen2'),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              'FooButton',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "You are all ready!",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Welcome to StudyRoom.", style: bodyStyle),
            ],
          ),
          image: _buildImage('gen3'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white)),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: Colors.white)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

Widget _buildImage(String assetName) {
  return Align(
      child: Image.asset('images/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter);
}
