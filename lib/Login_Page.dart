import 'package:flutter/material.dart';
import 'home_page.dart'; // Halaman setelah login berhasil
import 'register_page.dart'; // <--- Tambahkan ini!

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Please using your email and password!"),
            const SizedBox(height: 20),
            Center(
              child: Image.asset('assets/cat.jpg', width: 100, height: 100),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    final String username = _usernameController.text;
                    final String password = _passwordController.text;

                    if (username == 'baba' && password == 'Kudus123') {
                      _showSnackBar('Login successful!', Colors.green);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CalculatorPage(),
                        ),
                      );
                    } else {
                      _showSnackBar(
                        'Invalid username or password.',
                        Colors.red,
                      );
                    }
                  },
                  child: const Text("Login"),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: const Text("Belum punya akun? Daftar di sini"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
