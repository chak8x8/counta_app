import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnBoardingPage extends StatefulWidget {

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      boxDecoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backgroundimage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: 'Screen1',
          body: 'Screen 1',
          image: Image.network('https://images.unsplash.com/photo-1610583997335-7311938ad122?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Screen2',
          body: 'Screen 2',
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Screen3',
          body: 'Screen 3',
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
