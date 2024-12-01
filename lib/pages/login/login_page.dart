import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordDisplayed = false;
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  @override
  void initState() {
    super.initState();

    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(CupertinoIcons.back),
          onTap: () => Navigator.of(context).pop(),
        ),
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 65),
              SvgPicture.asset(
                'assets/svg/unisco-light.svg',
                height: 128,
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    const TextSpan(text: "Halo OSIS "),
                    TextSpan(
                      text: "UNISCO",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const TextSpan(text: "!"),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Masukkan email dan password anda untuk login",
              ),
              const SizedBox(height: 95),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabled: true,
                    prefixIcon: const Icon(CupertinoIcons.mail),
                    labelText: "Email",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    suffix: IconButton(
                      icon: const Icon(CupertinoIcons.xmark),
                      onPressed: () => setState(() {
                        emailTextController.text = "";
                      }),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: emailTextController,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    labelText: "Password",
                    prefixIcon: const Icon(CupertinoIcons.lock),
                    suffix: IconButton(
                      icon: isPasswordDisplayed
                          ? const Icon(CupertinoIcons.eye_fill)
                          : const Icon(CupertinoIcons.eye_slash_fill),
                      onPressed: () => setState(() {
                        isPasswordDisplayed = !isPasswordDisplayed;
                      }),
                    ),
                  ),
                  obscureText: isPasswordDisplayed,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: passwordTextController,
                ),
              ),
              const SizedBox(height: 78),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(240, 55)),
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary,
                  ),
                  overlayColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
  }
}
