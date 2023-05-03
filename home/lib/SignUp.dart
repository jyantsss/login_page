import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  final String userId;

  const signup({required this.userId, super.key});

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
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(70),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 65),
                  Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Create your new account",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  CustomInputField(
                    hintText: "First Name",
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 8),
                  CustomInputField(
                    hintText: "Last Name",
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 8),
                  CustomInputField(
                    hintText: "Email",
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 8),
                  CustomInputField(
                      hintText: "Password",
                      controller: TextEditingController()),
                  SizedBox(height: 8),
                  CustomInputField(
                    hintText: "Confirm Password",
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 20),
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
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Login");
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
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

  final TextEditingController controller;
  const CustomInputField({
    required this.hintText,
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
        fontSize: 15,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 13,
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
