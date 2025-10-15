# track_me

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:
A simple Flutter app that tracks your location and shows how far you've traveled.

## What it does

- Track your location when you press Start
- Calculate distance traveled 
- Save trip data locally
- Show trip summary with start/end locations
- Display user list from an API

## Tech used

- Flutter(version: 3.32.2)
- Riverpod for state management
- Hive for local storage
- Dio for API calls
- Geolocator for location tracking

## Setup

1. Clone the repo
2. Run `flutter pub get`
3. Run `dart run build_runner build --delete-conflicting-outputs`
4. Run `flutter run`

## Android setup

Add these to `android/app/src/main/AndroidManifest.xml`:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
