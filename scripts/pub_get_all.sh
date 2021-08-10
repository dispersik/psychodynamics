#!/bin/bash

cd ..
flutter pub get

cd core
flutter pub get
cd ..

cd core_ui
flutter pub get
cd ..

cd features/auth
flutter pub get
cd ../..

cd features/home
flutter pub get
cd ../..

cd features/mood
flutter pub get
cd ../..

cd features/mood_analytics
flutter pub get
cd ../..

cd features/tests
flutter pub get
cd ../..

cd features/tests_analytics
flutter pub get
cd ../..

cd features/time_tracker
flutter pub get
cd ../..