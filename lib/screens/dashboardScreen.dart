import 'package:PlaceIQ/models/properties.dart';
import 'package:flutter/material.dart';
import 'package:PlaceIQ/utils/constants.dart';

import 'package:PlaceIQ/widgets/screen_container_white.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String getIntDateTime() {
    DateTime now = DateTime.now();
    String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    return formattedDateTime;
  }

  // State variable to track whether the spinner is active
  bool _isLoading = false;
  bool isObscured = false;

  // Simulate fetching data with a delay
  Future<void> _simulateDataFetching() async {
    setState(() {
      _isLoading = true; // Activate the spinner
    });

    // Simulate a delay of 3 seconds (simulating network call)
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isLoading = false; // Deactivate the spinner
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    //final colorScheme = Theme.of(context).colorScheme;

    final formatter = NumberFormat.currency(
      locale: 'en_UK',
      symbol: naira_sign,
    );

    final String getuser_current_balance = formatter.format(
      user_current_balance,
    );

    Future<void> _toggleVisibility() async {
      setState(() {
        isObscured = !isObscured;
      });
    }

    String _getDisplayText() {
      return isObscured
          ? getuser_current_balance
          : '*' * getuser_current_balance.length;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: WhiteScreenBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              // Row 1: Header with Profile & Notifications
              // Row(
              //   children: [
              //     CircleAvatar(
              //       radius: 24,
              //       backgroundImage: AssetImage('assets/images/profile.jpg'),
              //     ),
              //     const SizedBox(width: 12),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: const [
              //         Text(
              //           "John Doe",
              //           style: TextStyle(
              //             fontSize: 16,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         Text(
              //           "johndoe@gmail.com",
              //           style: TextStyle(fontSize: 14, color: Colors.grey),
              //         ),
              //       ],
              //     ),
              //     const Spacer(),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: Colors.grey[300],
              //       ),
              //       child: const Icon(Icons.notifications, size: 20),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 75),

              // Row 2: Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search properties...",
                  hintStyle: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 170, 168, 168),
                    fontSize: 14,
                  ), // 👈 Hint text color
                  prefixIcon: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      // color: Colors.grey[300],
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25),
                      ),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                      size: 24,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 234, 231, 231),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),

              const SizedBox(height: 16),

              // Row 3: Scrollable Categories
              SizedBox(
                height: 35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: [
                    _buildCategoryButton("All", context),
                    _buildCategoryButton("For Sale", context),
                    _buildCategoryButton("For Rent", context),
                    _buildCategoryButton("New Projects", context),
                    _buildCategoryButton("Commercial", context),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Row 4: Scrollable Property List
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  itemBuilder:
                      (context, index) =>
                          PropertyCard(property: properties[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategoryButton(String label, BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    margin: const EdgeInsets.only(right: 8),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(label, style: TextStyle(color: Theme.of(context).primaryColor)),
  );
}

// Property Card Widget
class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
      locale: 'en_UK',
      symbol: naira_sign,
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PropertyDetailScreen(property: property),
          ),
        );
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(
                    property.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                // Size Info (bottom left)
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(120, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      property.description,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                // Arrow Icon (top right)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Transform.rotate(
                      angle: -0.7854,
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        property.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                        formatter.format(property.price),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.grey,
                          size: 15,
                        ),
                        SizedBox(width: 3),
                        Text(
                          property.location,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyDetailScreen extends StatelessWidget {
  final Property property;

  const PropertyDetailScreen({super.key, required this.property});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Property Details")),
      body: Center(child: Text("Full details for Property ${property.name}")),
    );
  }
}
