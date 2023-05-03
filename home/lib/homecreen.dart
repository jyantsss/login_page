import 'package:flutter/material.dart';
import 'package:home/Signup.dart';

class home_Screen extends StatelessWidget {
  const home_Screen({super.key});

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
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 230),
                  Text(
                    "Decorate your ghar with us🏡",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: size.width * 0.5,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: size.width * 0.5,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
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
                        'Login',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: Image.asset('images/logo.jpg', height: 150, width: 150),
          ),
        ],
      ),
    );
  }
}
