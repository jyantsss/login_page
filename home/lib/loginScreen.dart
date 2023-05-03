import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/bg.jpg',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 7,
            left: 7,
            child: GestureDetector(
              onTap: () {
                print('Go back');
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(Icons.arrow_back_ios_new_sharp),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            top: 40,
            left: 60,
            right: 60,
            child: Container(
              height: size.height - 150,
              width: size.width * 1,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 75),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Login to your account",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 50),
                  CustomInputField(
                    hintText: "Username/Email",
                    prefixIcon: Icons.email,
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 20),
                  CustomInputField(
                      hintText: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: Icons.visibility,
                      controller: TextEditingController()),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: size.width * 0.7,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Sign up");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 0,
            right: 0,
            child: Image.asset('images/logo.jpg', height: 50, width: 50),
          ),
        ],
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  const CustomInputField({
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return TextField(
      controller: controller,
      onChanged: (val) {
        print('controller,text');
      },
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(106, 158, 158, 158)),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
