# 🎸 Music App

A beautifully designed **Flutter music learning app** built using **BLoC Architecture** (also known as Clean Code Architecture). It features adaptive design, modular folders, and Firebase services to ensure scalability and performance.

---

## 🧠 Architecture

This app follows the **BLoC (Business Logic Component)** pattern and clean architecture principles:


## 🚀 Features

- 🎯 **Purpose**: A sleek app to explore musical instruments and promote music learning.

- 🧱 **Architecture**: Implements **BLoC (Business Logic Component)** pattern, also known as **Clean Architecture**.

- 📁 **Modular Folder Structure**:
  - `bloc/` – Manages state using BLoC for a reactive UI.
  - `config/` – Centralized app configurations like:
    - App colors
    - Constants
    - Routing/navigation
    - Service locator via `get_it`
  - `data/` – Contains:
    - `repository/` – Connects BLoC with services
    - `services/` – Handles Firebase and backend operations
  - `service/` – Contains core services and helper functions
  - `view/` – Includes all screens and their reusable widgets

- 🔥 **Firebase Integration**:
  - Firestore setup and usage through services
  - Follows repository pattern for clean separation of logic

- 🌈 **UI Highlights**:
  - Custom widgets like `DiskWidget`, `PiannoWidget`, and `FreeDemoBanner`
  - Gradient backgrounds, stacked visuals, and stylish design
  - Built with `flutter_screenutil` for responsive layouts

- 🧭 **Navigation**:
  - Handled through a custom router using `config/router.dart`

- 📦 **Packages Used**:
  - `flutter_bloc` – State management
  - `get_it` – Dependency injection
  - `firebase_core`, `cloud_firestore` – Backend services
  - `flutter_screenutil` – Responsive UI
  - `equatable` – Value comparison



---

## 📁 Folder Structure
<h2>📸 Screenshot</h2>



<p align="center">
  <img src="https://github.com/user-attachments/assets/e6f9123a-f1fb-40bd-8d90-7b81507374b4" alt="Screenshot 1" height="350" />
  <img src="https://github.com/user-attachments/assets/980314b1-d6fa-4d31-8be5-9f288dcdc9e2" alt="Screenshot 2" height="350" />
  <img src="https://github.com/user-attachments/assets/c8132fe8-4563-4ef8-bc42-59cc25905316" alt="Screenshot 3" height="350" />
</p>



---

## 🚀 Features

- 🎹 Hero Section with disk and piano widgets
- 🧱 Scalable, clean architecture with BLoC
- 📱 Responsive layout using `flutter_screenutil`
- 🔥 Firebase integration via service layer
- 🧭 Navigation using `app_routes` and dependency injection with GetIt

---

## 🎬 Demo Videos

| 📱 **App Walkthrough** | 🧠 **Code Structure Overview** |
|------------------------|-------------------------------|
| ▶️ [Watch App Demo](https://drive.google.com/file/d/1QY2msR1cRss3k1pO2sUhI2UFxNu_5k3d/view?usp=drive_link) | 🛠️ [Explore Code Flow](https://drive.google.com/file/d/19PKVXvcqApE41T9hElGg5_Huenb1yCVh/view?usp=drive_link) |

---

## 🧑‍💻 Developed By

**Nikhil** – Flutter Developer | BLoC | Firebase | Clean Architecture

---

⭐️ *Feel free to fork, star, and contribute to this project!*  


> 📌 **Note**:  
> - For image handling, I have used **network image URLs** stored in Firestore instead of Firebase Storage, as Firebase Storage requires billing to be enabled.  
> - There may be slight delays or pending updates since I’m currently occupied with **semester exams**. Thank you for your understanding!



