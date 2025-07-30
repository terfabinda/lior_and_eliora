import 'package:flutter/material.dart';

/// A reusable background container with a linear gradient.
/// The gradient transitions between the app's primary color and secondary color.
class WhiteScreenBackground extends StatelessWidget {
  /// The child widget to be displayed on top of the gradient background.
  final Widget child;

  /// Creates a [WhiteScreenBackground] widget.
  const WhiteScreenBackground({Key? key, required this.child})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the theme colors
    Color primaryColor = Theme.of(context).colorScheme.tertiary;
    Color secondaryColor = Theme.of(context).colorScheme.surface;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter, // Gradient starts from the top
          end: Alignment.bottomCenter, // Gradient ends at the bottom
          colors: [
            primaryColor, // Primary color from the theme
            secondaryColor, // Secondary color from the theme
          ],
        ),
      ),
      child: child, // The content to display on top of the gradient
    );
  }
}
