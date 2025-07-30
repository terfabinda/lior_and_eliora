import 'package:flutter/material.dart';
import 'package:PlaceIQ/screens/screen_routes.dart';
import 'package:PlaceIQ/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track the current index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome User',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Where Quality Meets Expreience',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: const Icon(Icons.person, color: Colors.white, size: 20),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: screens[currentIndex],
      // Step 4: Add the BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Current active tab
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the index when a tab is tapped
            //print("current index: ${currentIndex}");
          });
        },
        type: BottomNavigationBarType.fixed, // Required for more than 3 items
        selectedItemColor:
            Theme.of(context).primaryColor, // Color for the selected tab
        unselectedItemColor:
            Theme.of(context).colorScheme.tertiary, // Color for unselected tabs
        showSelectedLabels: true, // Show labels for selected tabs
        showUnselectedLabels: false, // Hide labels for unselected tabs
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
