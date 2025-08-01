import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FriendProfileApp());
}

class FriendProfileApp extends StatelessWidget {
  const FriendProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ใช้ Theme เพื่อกำหนดสีหลักและฟอนต์ให้กับทั้งแอป
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: GoogleFonts.itimTextTheme(),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text("แนะนำเพื่อนสนิท"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/images/7.png"),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              "ศรสิวะพงค์",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "ชื่อเล่น: เจน",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 30),
            // เพิ่ม const สำหรับทุก widget ที่ค่าคงที่
            const DetailRow(icon: Icons.cake, title: "อายุ", detail: "22 ปี"),
            const DetailRow(icon: Icons.home, title: "บ้านเกิด", detail: "กรุงเทพมหานคร"),
            const DetailRow(icon: Icons.favorite, title: "อาหารที่ชอบ", detail: "ส้มตำปูปลาร้า"),
            const DetailRow(icon: Icons.gamepad, title: "กิจกรรมที่ชอบ", detail: "เล่นเกม ROV, ดูซีรีส์เกาหลี"),
            const DetailRow(icon: Icons.music_note, title: "เพลงที่ฟังบ่อย", detail: "LALISA - LISA"),
          ],
        ),
      ),
    );
  }
}

// ย้ายฟังก์ชันเป็น StatelessWidget เพื่อให้ใช้ const ได้
class DetailRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String detail;

  const DetailRow({
    super.key,
    required this.icon,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.teal, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
