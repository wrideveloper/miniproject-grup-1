import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff333333),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/SplashImages.png",
            width: 500,
            height: 500,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 30),
          const Text(
            'Let\'s improve your appearence',
            style: TextStyle(
              fontFamily: "Arial",
              fontWeight: FontWeight.normal,
              fontSize: 35,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          const Text(
            'find cool shoes to support your daily activities',
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Widget home_page()),
              // );
            },
            child: Container(
              alignment: Alignment.center,
              width: 220,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Arial",
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    decoration: TextDecoration.none),
              ),
            ),
          )
        ],
      ),
    );
  }
}
