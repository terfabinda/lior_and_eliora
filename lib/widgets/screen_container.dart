import 'package:flutter/material.dart';

/// A reusable background container with a linear gradient.
/// The gradient transitions between the app's primary color and secondary color.
class ScreenBackground extends StatelessWidget {
  /// The child widget to be displayed on top of the gradient background.
  final Widget child;

  /// Creates a [ScreenBackground] widget.
  const ScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the theme colors
    Size size = MediaQuery.of(context).size;
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;
    final Color tertiaryColor = Theme.of(context).colorScheme.surface

    return Container(
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter, // Gradient starts from the top
          end: Alignment.bottomCenter, // Gradient ends at the bottom
          colors: [
            //primaryColor, // Primary color from the theme
            //secondaryColor, // Secondary color from the theme
            tertiaryColor,
            Colors.white,
          ],
        ),
      ),
      child: child, // The content to display on top of the gradient
    );
  }
}
