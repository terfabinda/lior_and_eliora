- ✅ **Frontend**: Built with **Flutter** (for iOS, Android, and Web)
- ✅ **Backend & Server Logic**: Built with **Dart** using **Flutter-compatible backend solutions** (e.g., **Aqueduct**, **Angel**, or **custom Dart HTTP server**)
- ✅ **Database**: PostgreSQL / MySQL (DBMS details maintained in Dart)
- ✅ **Modern, clean, investor- and developer-friendly**

---

# 🏡 Lior and Eliora – Property Advertising & Sales Platform

![Lior and Eliora Logo](https://via.placeholder.com/150x150/1E3A8A/FFFFFF?text=LE)  
_Your Trusted Partner in Real Estate_

> **Lior and Eliora** is a **Flutter-powered real estate platform** that connects property owners, agents, and buyers across Nigeria. With a fully Dart-based stack — from frontend to backend — we deliver a fast, secure, and scalable solution for advertising, discovering, and selling properties with ease.

---

## 🌟 Overview

**Lior and Eliora** simplifies real estate in emerging markets by offering:

- 📱 A **beautiful, responsive Flutter app** for Android, iOS, and Web
- ⚙️ A **lightweight, efficient Dart backend** for API and business logic
- 💾 A **robust DBMS** for managing listings, users, and transactions
- 🌍 A **local-first approach** with smart search, offline support, and instant messaging

Whether you're listing a home in Lekki or searching for land in Owerri, **Lior and Eliora** makes it seamless.

---

## 📱 Key Features

### For Property Owners & Agents

✅ **List Properties in Minutes**  
Upload photos, videos, documents, and detailed specs (location, price, type, amenities).

✅ **Manage Listings & Availability**  
Edit, pause, or mark properties as sold with one tap.

✅ **Track Engagement**  
See views, saves, and messages per listing.

✅ **Verified Profiles**  
Gain trust with verified badges and ID checks.

### For Buyers & Renters

🔍 **Smart Search & Filters**  
Filter by location, price range, bedrooms, property type (apartment, duplex, land), and more.

📍 **Interactive Map View**  
Explore listings on Google Maps or OpenStreetMap integration.

💬 **Secure In-App Chat**  
Message owners/agents without sharing personal contacts.

❤️ **Save & Compare Homes**  
Shortlist favorites and compare side-by-side.

### Admin & Platform Tools

🔐 **Fraud Detection**  
Automated flagging of duplicate or suspicious listings.

📊 **Admin Dashboard**  
Approve listings, manage users, and monitor platform health.

🔔 **Push Notifications**  
Alert users about new matches, messages, or price drops.

---

## 🛠️ Technology Stack

| Layer                  | Technology                                                                                                |
| ---------------------- | --------------------------------------------------------------------------------------------------------- |
| **Frontend**           | **Flutter** (Android, iOS, Web)                                                                           |
| **Backend**            | **Dart** with [Aqueduct](https://aqueduct.io) / [Angel](https://angel-dart.dev) / Custom Dart HTTP Server |
| **Database**           | **PostgreSQL** (recommended) or **MySQL** (with `postgres` or `mysql1` Dart package)                      |
| **State Management**   | Provider / Riverpod                                                                                       |
| **Authentication**     | JWT + OAuth2 (Google, Apple)                                                                              |
| **Storage**            | Firebase Storage / AWS S3 / Cloudinary                                                                    |
| **Maps**               | `google_maps_flutter`, `flutter_map`                                                                      |
| **Push Notifications** | Firebase Cloud Messaging (FCM)                                                                            |
| **Deployment**         | Backend: Google Cloud Run / Heroku / Docker; App: Google Play, App Store, Web Hosting                     |

---

### 📁 **Directory Structure for `lior-and-eliora` Flutter App**

```bash
lior-and-eliora/
├── assets/
│   ├── fonts/
│   │   ├── Lato-Regular.ttf
│   │   ├── Lato-Bold.ttf
│   │   ├── Montserrat-Regular.ttf
│   │   └── Roboto-Medium.ttf
│   └── images/
│       ├── properties/
│       │   ├── property_0.jpg
│       │   ├── property_1.jpg
│       │   ├── property_2.jpg
│       │   ├── property_3.jpg
│       │   ├── property_4.jpeg
│       │   ├── property_4.jpg
│       │   ├── property_5.jpeg
│       │   ├── property_5.jpg
│       │   └── property_5.png
│       ├── full_logo.png
│       ├── half_logo.png
│       ├── logo.png
│       ├── profile.jpg
│       └── lioreliora.jpg
│
├── lib/
│   ├── models/
│   │   └── properties.dart
│   │
│   ├── screens/
│   │   ├── dashboardScreen.dart
│   │   ├── favoritesScreen.dart
│   │   ├── home_screen.dart
│   │   ├── profileScreen.dart
│   │   ├── sample.dart
│   │   ├── screen_routes.dart
│   │   ├── searchScreen.dart
│   │   ├── settingsScreen.dart
│   │   └── welcome_screen.dart
│   │
│   ├── themes/
│   │   ├── app_theme_extension.dart
│   │   └── app_theme_main.dart
│   │
│   ├── utils/
│   │   ├── constants.dart
│   │   └── helpers.dart
│   │
│   ├── widgets/
│   │   ├── app_drawer.dart
│   │   ├── circular_icon_widget.dart
│   │   ├── credit_card_widget.dart
│   │   ├── half_card_widget.dart
│   │   ├── screen_container.dart
│   │   ├── screen_container_white.dart
│   │   └── vrect_thumbnail.dart
│   │
│   └── main.dart
│
├── test/
│   └── widget_test.dart
│
├── pubspec.yaml
├── README.md
├── .gitignore
└── .metadata
```

---

### ✅ Key Notes on This Structure

| Folder/File                 | Purpose                                                      |
| --------------------------- | ------------------------------------------------------------ |
| `assets/fonts/`             | Stores custom fonts used in the app (e.g., Lato, Montserrat) |
| `assets/images/properties/` | Dedicated folder for property listing images                 |
| `assets/images/`            | General app images: logos, profile, banners                  |
| `lib/models/`               | Data models (e.g., `Property` class)                         |
| `lib/screens/`              | All UI pages/screens of the app                              |
| `lib/themes/`               | App-wide styling, colors, typography                         |
| `lib/utils/`                | Reusable constants (strings, URLs) and helper functions      |
| `lib/widgets/`              | Custom reusable UI components                                |
| `lib/main.dart`             | Entry point of the app                                       |
| `pubspec.yaml`              | Must include assets in `flutter:` section (see below)        |

---

### 🔧 Don't Forget: Update `pubspec.yaml`

Ensure your `pubspec.yaml` includes the assets:

```yaml
flutter:
  uses-material-design: true

  # Assets
  assets:
    - assets/images/full_logo.png
    - assets/images/half_logo.png
    - assets/images/logo.png
    - assets/images/profile.jpg
    - assets/images/lioreliora.jpg
    - assets/images/properties/

  # Fonts
  fonts:
    - family: Lato
      fonts:
        - asset: assets/fonts/Lato-Regular.ttf
        - asset: assets/fonts/Lato-Bold.ttf
          weight: 700
    - family: Montserrat
      fonts:
        - asset: assets/fonts/Montserrat-Regular.ttf
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Medium.ttf
          weight: 500
```

> 💡 Tip: You can just list `assets/images/` to include all images, but it's safer to list key ones explicitly.

---

All assets are organized under `assets/`, and core logic is separated into `models`, `screens`, `widgets`, and `utils`.

````

---

### 🛠 Bonus: Recommended Next Steps

1. **Create missing folders/files** if not already done:
   ```bash
   mkdir -p assets/fonts assets/images/properties lib/{models,screens,themes,utils,widgets}
````

2. **Add placeholder files**:

   ```bash
   touch lib/main.dart lib/models/properties.dart lib/themes/app_theme_main.dart
   ```

3. **Use consistent naming**: Prefer `snake_case` for files (`home_screen.dart`) and `PascalCase` for classes.

---

## 🚀 Getting Started (For Developers)

### Prerequisites

- Flutter SDK (v3.16+)
- Dart SDK (v3.2+)
- PostgreSQL (or MySQL)
- Firebase project (for auth & storage)
- `dart` and `flutter` in PATH

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/lior-eliora.git
cd lior-eliora
```

### 2. Set Up Backend

```bash
cd dart_backend
dart pub get
cp .env.example .env
# Edit .env with DB credentials, JWT secret, etc.
dart run bin/server.dart
```

> Server runs on `http://localhost:8888`

### 3. Set Up Database

```sql
-- Run schema.sql to create tables
psql -U your_user -d your_db -f ../database/schema.sql
```

### 4. Run Flutter App

```bash
cd ../flutter_app
flutter pub get
flutter run
```

> 📄 See [SETUP.md](docs/SETUP.md) for full setup guide.

---

## 🌍 Vision & Mission

### 🎯 Mission

To **democratize real estate access** in Nigeria by building a fast, reliable, and locally relevant platform using modern Dart & Flutter technology.

### 🌱 Vision

To become the **leading home-finding platform in West Africa**, powered entirely by a **unified Dart stack** — from UI to API.

---

## 🤝 Get Involved

We’re open to:

- 🛠️ **Developers** — Help us scale the Dart backend and improve Flutter UX
- 🏢 **Real Estate Partners** — List your agency or portfolio
- 💡 **Investors & Sponsors** — Join our seed round
- 📣 **Beta Testers** — Try the app and give feedback

📧 **Contact**: hello@lior-eliora.com  
🌐 **Website**: [www.lior-eliora.com](https://www.lior-eliora.com)

---

## 📄 License

This project is licensed under the **MIT License**.  
See [LICENSE](LICENSE) for details.

---

## 📬 Contact

**Lior and Eliora Technologies Ltd.**  
📧 hello@lior-eliora.com  
📱 +234 XXX XXX XX XX  
📍 Lagos, Nigeria  
💼 Serving Lagos, Abuja, Port Harcourt, Ibadan & beyond

---

> _“A home is more than bricks and mortar. It’s peace, safety, and belonging.”_  
> — Lior & Eliora

---

✅ _Investor pitch deck, UI/UX designs, and live demo available upon request._  
🚀 _Currently in beta — join our pilot program today!_

---

_README v2.0 — Updated: May 2025_  
🔧 Built with ❤️ and Dart

---
