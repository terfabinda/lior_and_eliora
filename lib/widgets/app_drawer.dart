import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ), // Optional
                ),
                SizedBox(height: 8),
                Text(
                  'John Doe',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(color: Colors.white60, fontSize: 14),
                ),
              ],
            ),
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.pop(context);
              // Navigate or handle action
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.search,
            text: 'Search Properties',
            onTap: () {
              Navigator.pop(context);
              // Handle search tap
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.favorite,
            text: 'Favorites',
            onTap: () {
              Navigator.pop(context);
              // Handle favorites tap
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.account_balance_wallet,
            text: 'Mortgage Calculator',
            onTap: () {
              Navigator.pop(context);
              // Handle mortgage calculator
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              Navigator.pop(context);
              // Handle settings
            },
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.info,
            text: 'About',
            onTap: () {
              Navigator.pop(context);
              // Handle about
            },
          ),

          // 👇 Add Divider here
          Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Theme.of(context).colorScheme.primary,
          ),

          // 👇 App Logo Below Divider
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/half_logo.png', // ← Your app logo
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 12),
                const Text(
                  'PlaceIQ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(text, style: Theme.of(context).textTheme.titleSmall),
      onTap: onTap,
    );
  }
}
