class Property {
  final String name;
  final String location;
  final double price;
  final String description;
  final String imageUrl;

  Property({
    required this.name,
    required this.location,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

final List<Property> properties = [
  Property(
    name: "Luxury Villa",
    location: "Gusape, Abuja FCT",
    price: 1200000,
    description: "5-bedroom villa with view.",
    imageUrl: "assets/images/property_0.jpg",
  ),
  Property(
    name: "Downtown Apartment",
    location: "Lokogoma, Abuja FCT",
    price: 3500000,
    description: "Modern apartment near Central Park.",
    imageUrl: "assets/images/property_1.jpg",
  ),
  Property(
    name: "Hill Country Estates",
    location: "Wuse II, Abuja FCT",
    price: 4500000,
    description: "5-bedroom villa with view.",
    imageUrl: "assets/images/property_2.jpg",
  ),
  Property(
    name: "Freedom Apartments",
    location: "Lokogoma, Abuja FCT",
    price: 2850000,
    description: "Modern apartment near Central Park.",
    imageUrl: "assets/images/property_3.jpg",
  ),
  Property(
    name: "Millenium Villa",
    location: "Maitama, Abuja FCT",
    price: 1200000,
    description: "5-bedroom villa with view.",
    imageUrl: "assets/images/property_4.jpg",
  ),
  Property(
    name: "Royalty Court",
    location: "Gwarimpa, Abuja FCT",
    price: 850000,
    description: "Modern apartment near Central Park.",
    imageUrl: "assets/images/property_5.jpg",
  ),
];
