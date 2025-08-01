import 'package:flutter/material.dart';
import 'screen/item.dart'; // 1. Import ไฟล์ item.dart ที่เราเพิ่งสร้าง

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. เราจะใช้ MaterialApp และ Scaffold เป็นโครงสร้างหลัก
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:99"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        // 3. เปลี่ยน body ให้เรียกใช้ Item Widget ของเรา
        body: const Item(),
      ),
    );
  }
}