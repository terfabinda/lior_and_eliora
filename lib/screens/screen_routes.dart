import 'package:flutter/material.dart';
//import 'package:PlaceIQ/screens/searchScreen.dart';
import 'package:PlaceIQ/screens/favoritesScreen.dart';
import 'package:PlaceIQ/screens/profileScreen.dart';
import 'package:PlaceIQ/screens/dashboardScreen.dart';
import 'package:PlaceIQ/screens/settingsScreen.dart';

// List of screens
final List<Widget> screens = [
  const DashboardScreen(),
  const FavouritesScreen(),
  const SettingsScreen(),
  const ProfileScreen(),
];
