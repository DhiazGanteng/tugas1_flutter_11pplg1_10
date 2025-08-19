import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/register_page.dart';
import 'package:project_dart_1/widget/widget_button.dart';
import 'package:project_dart_1/widget/wiget_controller.dart';
import 'package:project_dart_1/Contoller/Calculator_Contoller.dart';
import 'package:project_dart_1/my_calcu.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Declare TextEditingController for username and password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Tambahkan controller GetX
final CalculatorController calculatorController = Get.put(CalculatorController());


  // Helper function to show a SnackBar
  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to our first app!",
              style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const Text("Please using your email and password!"),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'aset/image/sae.jpg',
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: MyTextField(
                textEditingController: _usernameController,
                labelText: "Input Username",
                IsPassword: false,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: MyTextField(
                textEditingController: _passwordController,
                labelText: "Input Password",
                IsPassword: true,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: CustomButton(
                  text: "Login",
                  textColor: Colors.blue,
                  OnPressed: () {
                    final String username = _usernameController.text;
                    final String password = _passwordController.text;

                    if (username == 'ghasia' && password == 'admin123') {
                      _showSnackBar('Login successful!', Colors.green);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCalcu()),
                      );
                    } else {
                      _showSnackBar('Invalid username or password.', Colors.red);
                    }
                  },
                ),
              ),
            ),
            Center(
              child: CustomButton(
                text: "Register",
                textColor: Colors.red,
                OnPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),

            // ✅ Tambahkan Obx di bawah tombol
            Center(
              child: Obx(() => Text(
                    "Hasil: ${calculatorController.hasil.value}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}