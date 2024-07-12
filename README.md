# Tezda App

Tezda is a robust e-commerce application designed to provide users with a seamless shopping experience. Users can sign up, log in, reset passwords, browse product listings, and add products to their favorite collections. The app follows clean code architecture principles, ensuring a clear separation between the UI layers and business logic.

## Features

- **User Authentication**: Sign up, log in, and reset password functionalities.
- **Product Listings**: Browse a comprehensive list of products.
- **Favorites**: Add products to favorite collections for easy access.

## Architecture

Tezda app adheres to clean code architecture, which emphasizes the separation of concerns. This ensures maintainability, scalability, and testability of the codebase.

### Layers

1. **Presentation Layer**: Contains the UI and handles user interactions.
2. **Domain Layer**: Encapsulates business logic and domain-specific rules.
3. **Data Layer**: Manages data sources, including remote and local data storage.

## State Management

Riverpod is used for state management, providing a predictable and efficient way to manage app state. This ensures the app is responsive and the state is consistently maintained across the application.

## Technologies

- **Flutter**: The primary framework for building the app.
- **Riverpod**: State management library for managing app state.
- **Dart**: Programming language used for Flutter development.

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your development machine.
- An IDE such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/kennethihezie/tezda_tech_task.git
   cd tezda_app 
   ```

2. Install dependencies:
   ```sh
   flutter pub get
   ```

3. Run the app:
   ```sh
   flutter run 
   ```
   
