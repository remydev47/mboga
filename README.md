# Grocery App Mboga with Flutter and Daraja API Integration

This is a Flutter-based mobile application that serves as a grocery shopping app, allowing users to browse and purchase grocery items. The app integrates with the Daraja API to enable secure and seamless payment processing.

## Features

- Browse a variety of grocery items.
- Add items to the cart.
- View the cart and adjust quantities.
- Proceed to checkout and make payments using the Daraja API.
- Receive order confirmation and payment receipts.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Daraja API Credentials: You'll need to obtain API keys from Safaricom's Daraja API.

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/grocery_app.git
```

2. Navigate to the project directory:

```bash
cd grocery_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Configure Daraja API keys:

   Open `lib/utils/daraja_config.dart` and replace the placeholders with your actual Daraja API credentials:

   ```dart
   class DarajaConfig {
     static const consumerKey = 'YOUR_CONSUMER_KEY';
     static const consumerSecret = 'YOUR_CONSUMER_SECRET';
   }
   ```

### Usage

Run the app on your preferred emulator or physical device:

```bash
flutter run
```

## Implementation Details

- The app uses Flutter for the frontend UI.
- The Daraja API is integrated for payment processing.
- The payment process involves generating access tokens, initiating transactions, and handling payment callbacks.
