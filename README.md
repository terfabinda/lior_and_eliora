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

## 📂 Project Structure

```bash
lior-eliora/
├── flutter_app/               # Flutter frontend (mobile & web)
│   ├── lib/
│   │   ├── screens/           # UI pages
│   │   ├── widgets/           # Reusable components
│   │   ├── services/          # API calls
│   │   ├── models/            # Data models (Dart classes)
│   │   └── main.dart
│
├── dart_backend/              # Dart backend server
│   ├── lib/
│   │   ├── controllers/       # Request handlers
│   │   ├── models/            # DB models (Dart classes)
│   │   ├── routes/            # API endpoints
│   │   └── database.dart      # DB connection & queries
│   ├── config/
│   ├── migration/             # DB schema migrations
│   └── pubspec.yaml
│
├── database/
│   ├── schema.sql             # DB schema (tables: users, properties, messages, etc.)
│   └── seeds/                 # Sample data
│
├── docs/                      # Documentation, design, API specs
├── .env.example               # Environment variables
└── README.md                  # This file
```

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
