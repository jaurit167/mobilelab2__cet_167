import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// แก้ไข import ให้ถูกต้อง (ไม่มี screen/)
import 'package:flutter_application_1/screen/models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final List<FoodMenu> foodMenus = [
    FoodMenu(
      name: "สุกี้รวม",
      type: "ต้ม",
      component: "ไข่ไก่, เกี๊ยวกุ้ง, ปูอัด, เบคอน, ผักสด",
      price: 299,
      foodpic: Foodpic.menu1,
    ),
    FoodMenu(
      name: "สลัดผัก",
      type: "สุขภาพ",
      component: "แครอท, มะเขือเทศ, ผักรวม",
      price: 159,
      foodpic: Foodpic.menu2,
    ),
    FoodMenu(
      name: "ข้าวกะเพรา",
      type: "ผัด",
      component: "หมูสับ, พริก, กระเทียม, ใบกะเพรา",
      price: 89,
      foodpic: Foodpic.menu3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodMenus.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index % 2 == 0 ? Colors.orange.shade100 : Colors.green.shade100,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                foodMenus[index].foodpic.image,
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodMenus[index].name,
                      style: GoogleFonts.itim(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      "ประเภทอาหาร : ${foodMenus[index].type}",
                      style: GoogleFonts.itim(fontSize: 16),
                    ),
                    Text(
                      "ราคา : ${foodMenus[index].price} บาท",
                      style: GoogleFonts.itim(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}