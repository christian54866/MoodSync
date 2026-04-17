import 'package:flutter/material.dart';

void main() => runApp(const MoodSync());

class MoodSync extends StatelessWidget {
  const MoodSync({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFFFBF00), // Your Amber color
      ),
      home: const TerminalHome(),
    );
  }
}

class TerminalHome extends StatelessWidget {
  const TerminalHome({super.key});
  @override
  Widget build(BuildContext context) {
    final amber = Theme.of(context).primaryColor;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(">> MOOD_SYNC_OS [v1.1.0]", 
                   style: TextStyle(color: amber, fontFamily: 'Courier', fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              _buildLine(amber, "HARDWARE...", "NATIVE_IOS"),
              _buildLine(amber, "SENSORS...", "ACTIVE"),
              _buildLine(amber, "ATMOSPHERE...", "SYNCING"),
              const Spacer(),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(border: Border.all(color: amber, width: 2)),
                  child: Center(
                    child: Text("INITIALIZE SYNC", 
                         style: TextStyle(color: amber, letterSpacing: 8, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLine(Color c, String label, String status) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("> $label", style: TextStyle(color: c, fontSize: 14, fontFamily: 'Courier')),
          Text("[$status]", style: TextStyle(color: c, fontSize: 14, fontFamily: 'Courier')),
        ],
      ),
    );
  }
}
