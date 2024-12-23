import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController name;
  final _formKey = GlobalKey<FormState>();
  bool isVisibility = true;

  @override
  void initState() {
    name = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  void saqlash() {
    if (_formKey.currentState!.validate()) {
      log("TextFormField validatsiya bo'ldi!");
    } else {
      log("not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormField"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    obscureText: isVisibility,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Iltimos ismingizni kiriting!";
                      } else if (value.length < 4) {
                        return "Iltimos 4 ta belgidan kam bo'lmasligi lozim!";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisibility = !isVisibility;
                          });
                        },
                        icon: Icon(
                          isVisibility
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: "name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: saqlash,
                    child: Text("save"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
