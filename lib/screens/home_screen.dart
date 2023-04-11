import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/constant/colors.dart';
import 'package:nauggets_app/controllers/bottom_navbar_controller.dart';
import 'package:nauggets_app/screens/transaction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BottomNavBarController _controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                  children: const <TextSpan>[
                    TextSpan(text: "Balance"),
                    TextSpan(
                      text: " \$567,37",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildContainer(Icons.add),
                buildContainer(Icons.search),
                buildContainer(Icons.bar_chart),
              ],
            ),
            const Image(
              image: AssetImage(
                "assets/images/debitcard.png",
              ),
            ),
            SizedBox(
              height: Get.height * 0.5 / 10.h,
            ),
            buildText("My Cards", () {}),
            const Divider(),
            buildText("Transactions", () {
              Get.to(() => const TransactionScreen());
            }),
            const Divider(),
          ],
        ),
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

  Padding buildText(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: lightTextColor,
              ))
        ],
      ),
    );
  }

  Container buildContainer(IconData Icons) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: mainAppColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Icon(Icons, color: mainAppColor, size: 40),
    );
  }
}

