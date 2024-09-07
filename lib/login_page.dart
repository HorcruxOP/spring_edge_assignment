import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    );
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: size.width * 0.7,
          height: size.height * 0.9,
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: const EdgeInsets.all(30).copyWith(bottom: 30),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/ship.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Explore Demo Limited's Premier Logistics and Freight Services",
                    style: TextStyle(
                      fontSize: size.width * 0.02,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/logo.svg',
                          height: 32,
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/demo.svg',
                          height: 32,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(size.width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue.shade100,
                              ),
                              padding: const EdgeInsets.all(20),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/logo.svg',
                                  height: 50,
                                ),
                              ),
                            ),
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: size.width * 0.02,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "We are glad to see you",
                              style: TextStyle(fontSize: size.width * 0.01),
                            ),
                            const SizedBox(height: 50),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                enabledBorder: border,
                                focusedBorder: border,
                                errorBorder: border,
                                focusedErrorBorder: border,
                              ),
                            ),
                            const SizedBox(height: 30),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Passowrd',
                                enabledBorder: border,
                                focusedBorder: border,
                                errorBorder: border,
                                focusedErrorBorder: border,
                              ),
                            ),
                            const SizedBox(height: 50),
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.indigo.shade400,
                                    Colors.indigo.shade900,
                                  ],
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            MaterialButton(
                              onPressed: () {},
                              child: const Text('Forgot Password?'),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text("2024 DEMO GROUP. All Rights Reserved"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
