import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reset Password')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Добавление изображения
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    'lib/assets/reset-password.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 24), // Отступ после изображения
                // Поле для ввода email или username
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0, // Уменьшение высоты поля
                      horizontal: 12.0, // Отступы по бокам
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32), // Отступ перед кнопкой
                // Кнопка сброса пароля
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Процесс сброса пароля
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Resetting password...')),
                      );
                    }
                  },
                  child: Text('Reset Password'),
                ),
                SizedBox(height: 24), // Отступ между кнопками
                // Кнопка возврата на экран авторизации
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back to Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
