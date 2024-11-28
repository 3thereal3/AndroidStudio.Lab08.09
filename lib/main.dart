import 'package:flutter/material.dart';
import 'widgets/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth App',
      theme: ThemeData(
        brightness: Brightness.dark, // Темная тема для фона
        scaffoldBackgroundColor: Colors.black, // Черный фон для всех экранов
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          labelStyle: TextStyle(color: Colors.grey), // Серые метки
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // цвет кнопки
            foregroundColor: Colors.white, // цвет текста на кнопке
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue, // Синий цвет для текста
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.blue), // синий цвет границы
            foregroundColor: Colors.blue, // текст и иконки кнопки
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
          ),
        ),
      ),
      home: SignInScreen(),
    );
  }
}