import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 120,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    radius: 115,
                    child: Icon(
                      CupertinoIcons.person_fill,
                      size: 95,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Guest",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text("Anggota UNISCO dipersilahkan login"),
            const SizedBox(height: 45),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(200, 64)),
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
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              onPressed: () => Navigator.of(context).pushNamed('/login'),
            )
          ],
        ),
      ),
    );
  }
}
