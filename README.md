# yaho_app_test
Step to run project (Flutter >= 3.0)
1. Flutter pub get
2. flutter packages pub run build_runner build --delete-conflicting-outputs 
3. flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart 
4. Run main.dart