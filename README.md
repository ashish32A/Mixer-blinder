# Mixer App: A Flutter UI Challenge

This project is a Flutter application that recreates four different UI screens from a Figma design. It demonstrates a clean, component-based architecture and responsive design principles.

-----

## 🚀 Features

  * **Modular Architecture**: The UI is broken down into small, reusable widgets for easy maintenance and scalability.
  * **Responsive Design**: The app adapts its layout for various screen sizes, from mobile phones to web browsers, using widgets like `LayoutBuilder` and `Wrap`.
  * **Custom Theming**: A central `AppTheme` class manages the app's colors, typography, and component styles, allowing for easy switching between a dark and light theme.
  * **Reusable Widgets**: Common UI elements, such as `GradientButton`, are created as custom widgets to avoid code duplication.

-----

## 📂 Project Structure

The project follows a standard Flutter file structure to keep the codebase organized.

```
mixer_app/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── mixer_screen.dart
│   │   ├── mixer_vip_screen.dart
│   │   ├── subscription_screen.dart
│   │   └── upgrade_homepage_screen.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── widgets/
│       └── gradient_button.dart
└── pubspec.yaml
```

  * `lib/main.dart`: The entry point of the application, defining the app's theme and routes.
  * `lib/screens/`: Contains the code for each of the four main screens.
  * `lib/theme/`: Holds the `AppTheme` class, which defines the app's dark and light color schemes and styles.
  * `lib/widgets/`: A directory for reusable, custom UI components.

-----

## 🛠️ Setup and Installation

1.  **Clone the repository:**
    ```bash
    git clone [your-repo-link]
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd mixer_app
    ```
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```
    This will launch the application in a connected emulator, device, or web browser.

-----

## 🎨 Libraries and Tools

  * **Flutter**: The primary framework for building the application.
  * **`google_fonts`**: Used for integrating custom fonts like **Inter** and **Roboto** into the app.
  * **Figma**: The design tool used to create the original UI mockups.

-----

## 📝 Challenges and Solutions

### **1. Type Mismatch with `CardTheme`**

**Challenge**: Initially, the `cardTheme` property in `ThemeData` required `CardThemeData`, but the code was using `CardTheme`, leading to a type error.

**Solution**: This was resolved by correctly implementing **`CardThemeData`**, which aligns with Flutter's Material 3 theme system.

### **2. Creating a Responsive Layout**

**Challenge**: Recreating the Figma designs to work seamlessly on both mobile and desktop screens.

**Solution**: The UI was built using **`LayoutBuilder`** and **`Wrap`** widgets. `LayoutBuilder` dynamically adjusts the layout based on the screen's width, while `Wrap` ensures that widgets automatically flow to the next line when there isn't enough space.
