import 'package:flutter/material.dart';

/// A custom Flutter widget that displays an Icon inside a circular container
/// with a primary color background and secondary color foreground.
/// Optionally, a text caption can be displayed below the circle.
class CircularIconWidget extends StatelessWidget {
  /// The icon to display inside the circle.
  final IconData icon;

  /// The size of the circular container.
  final double size;

  /// The optional text caption to display below the circle.
  final String? caption;

  /// Creates a [CircularIconWidget].
  const CircularIconWidget({
    Key? key,
    required this.icon,
    this.size = 70, // Default size of the circle
    this.caption, // Optional caption
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the theme colors
    final Color primaryColor = Theme.of(context).primaryColor;
    Color secondaryColor =
        Colors.white; //Theme.of(context).colorScheme.secondary;

    return Column(
      mainAxisSize:
          MainAxisSize.min, // Take only as much vertical space as needed
      children: [
        // Circular container with icon
        Container(
          width: size, // Width of the circle
          height: size, // Height of the circle
          decoration: BoxDecoration(
            color: primaryColor, // Background color (primary color)
            shape: BoxShape.circle, // Makes the container circular
          ),
          child: Icon(
            icon,
            color: secondaryColor, // Foreground color (secondary color)
            size: size * 0.5, // Scale the icon size relative to the circle
          ),
        ),

        // Optional caption
        if (caption != null)
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0), // Add spacing between circle and text
            child: Text(
              caption!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
      ],
    );
  }
}
