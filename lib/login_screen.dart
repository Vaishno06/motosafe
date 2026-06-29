import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.motorcycle,
                color: Colors.orange,
                size: 80,
              ),

              const SizedBox(height: 15),

              const Text(
                "MotoSafe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: 320,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        TextButton(
                          onPressed: () {
                            setState(() {
                              isLogin = true;
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: isLogin
                                  ? Colors.orange
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            setState(() {
                              isLogin = false;
                            });
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: !isLogin
                                  ? Colors.orange
                                  : Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    if (!isLogin) ...[
                      _buildField("Full Name"),
                      const SizedBox(height: 15),

                      _buildField("Email"),
                      const SizedBox(height: 15),

                      _buildField("Phone Number"),
                      const SizedBox(height: 15),
                    ],

                    _buildField(
                      isLogin
                          ? "Username / Email"
                          : "Password",
                      obscureText: false,
                    ),

                    const SizedBox(height: 15),

                    _buildField(
                      "Password",
                      obscureText: true,
                    ),

                    if (!isLogin) ...[
                      const SizedBox(height: 15),

                      _buildField(
                        "Confirm Password",
                        obscureText: true,
                      ),
                    ],

                    const SizedBox(height: 25),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                           context,
                         MaterialPageRoute(
                           builder: (context) => const HomeScreen(),
                        ),
                      );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize:
                            const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12),
                        ),
                      ),
                  

                      child: Text(
                        isLogin ? "LOGIN" : "REGISTER",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String hint, {
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),

        filled: true,
        fillColor: Colors.black26,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}