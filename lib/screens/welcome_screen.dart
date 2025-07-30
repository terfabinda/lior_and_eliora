import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:PlaceIQ/widgets/screen_container.dart';
import 'package:PlaceIQ/utils/helpers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:PlaceIQ/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final useScreenPercentage = 0.7;

  @override
  void initState() {
    super.initState();
    //Delay for 3 seconds and then navigate to the login screen
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ScreenBackground(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, 25),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Place',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).primaryColor,
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'IQ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    height: getRelativeHeight(context, useScreenPercentage),
                    width: getRelativeWidth(context, useScreenPercentage),
                    'assets/images/half_logo.png',
                  ),
                  Text(
                    'Where Quality Meets Excellence!',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
