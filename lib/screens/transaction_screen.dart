import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/constant/colors.dart';
import 'package:nauggets_app/controllers/bottom_navbar_controller.dart';
import 'package:nauggets_app/controllers/login_controller.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final BottomNavBarController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: mainAppColor,
              height: MediaQuery.of(context).size.height * 2 / 10.h,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                        color: textColor,
                      ),
                    ),
                    const Icon(
                      Icons.menu,
                      size: 40,
                      color: textColor,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      maxRadius: 35,
                      minRadius: 10,
                      backgroundColor: Colors.white,
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/128/456/456283.png",
                        scale: 3,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tommy Berns",
                        style: TextStyle(
                            color: mainAppColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Los Angeles",
                            style: TextStyle(
                                color: lightTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.5 / 10.h,
            ),
            Center(
              child: SizedBox(
                child: Image.asset(
                    "assets/images/graph.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "INCOMES",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "EXPENSES",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "309",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "234",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
      currentIndex: _controller.currentIndex.value,
      onTap: _controller.changePage,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart, size: 20),
          label: 'Graph',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.monetization_on_outlined,
            size: 20,
          ),
          label: 'Bank',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    )),
    );
  }
}
