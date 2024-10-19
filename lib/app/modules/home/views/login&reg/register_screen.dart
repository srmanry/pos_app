import 'package:flutter/material.dart';

class RegisteScreen extends StatelessWidget {
  const RegisteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          //actionsIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          title: const Text(
            'Registration',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Form(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 0,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    focusColor: Colors.black,
                    fillColor: Colors.green),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Password",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 0,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    focusColor: Colors.black,
                    fillColor: Colors.green),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Business name",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 0,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Buisness name",
                    focusColor: Colors.black,
                    fillColor: Colors.green),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Country",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 0,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: " ",
                    focusColor: Colors.black,
                    fillColor: Colors.green),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(Icons.rectangle_outlined),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'I agree to loyverse Terms of user and have read \nand acknowledged Privacy Policy.',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: const Color.fromARGB(255, 93, 188, 98),
                height: 50,
                child: const Center(
                  child: Text(
                    "REGISTRATION",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
