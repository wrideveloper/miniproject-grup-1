import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  final TextStyle baseStyle = const TextStyle(
    fontWeight: FontWeight.normal,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

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
          const Spacer(),
          Text(
            'Let\'s improve your appearence',
            style: GoogleFonts.lato(
              textStyle: baseStyle,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(
            'find cool shoes to support your daily activities',
            style: GoogleFonts.lato(
              textStyle: baseStyle,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
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
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                'Get Started',
                style: GoogleFonts.lato(
                  textStyle: baseStyle,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
