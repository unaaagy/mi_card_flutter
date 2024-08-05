import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // make navigation bar and status bar transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  // make flutter draw behind navigation bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 16),
          // bottom: false,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                foregroundImage: AssetImage("assets/profile.webp"),
              ),
              SizedBox(height: 20),
              Text("Umesh Rana",
                  style: GoogleFonts.lobster(
                    color: Colors.white,
                    fontSize: 40,
                  )),
              Text("FLUTTER DEVELOPER",
                  style: GoogleFonts.sourceSans3(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 80,
                child: Divider(
                  color: Colors.white60,
                ),
              ),
              Card(
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "+977 98X XXX XXXX",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                    ),
                  )),
              SizedBox(height: 8),
              Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "umes.example@mail.com",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
