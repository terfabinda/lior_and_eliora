import 'package:flutter/material.dart';

/// A custom Flutter widget that mimics the dimensions and appearance of a Half card.
class HalfCardWidget extends StatelessWidget {
  /// The child widget to display inside the card (typically a Column).
  final Widget child;
  final double elevation;

  /// The image to superimpose on the bottom-right corner.
  final String? bottomRightImagePath;

  /// Creates a [HalfCardWidget].
  const HalfCardWidget(
      {Key? key,
      required this.child,
      required this.elevation,
      required this.bottomRightImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dimensions of a standard Half card (approximate aspect ratio)
    const double cardWidth = 300; // Width in pixels
    const double cardHeight = 90; // Height in pixels
    return Card(
      elevation: elevation, // Adds shadow for a card-like effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      clipBehavior:
          Clip.antiAlias, // Ensures the gradient respects the rounded corners
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor, // Primary color from the theme
              Theme.of(context).primaryColor, // Secondary color from the theme
            ],
          ),
        ),
        child: Stack(
          children: [
            // Main content (Column)
            Padding(
              padding: const EdgeInsets.all(16.0), // Padding for the content
              child: child, // The content to display inside the card
            ),

            // Transparent image in the bottom-right corner
            if (bottomRightImagePath != null)
              Positioned(
                bottom: -24, // Distance from the bottom
                right: 8, // Distance from the right
                child: Opacity(
                  opacity:
                      0.6, // Adjust transparency (0.0 = fully transparent, 1.0 = fully opaque)
                  child: Image.asset(
                    bottomRightImagePath!,
                    width: 140, // Set the width of the image
                    height: 140, // Set the height of the image
                    fit: BoxFit
                        .contain, // Ensure the image fits within the dimensions
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
